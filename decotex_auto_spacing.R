spacing <- function(hmm, str){
  strsp <- strsplit(str, split="")[[1]]
  emissions <- viterbi(hmm, strsp)
  if(length(strsp) != length(emissions)){
    stop("lengths are not match!")
  }
  strspacing <- vector(mode="character",length=length(strsp) * 2)
  spacingidx <- 1
  for(i in 1:length(emissions)){
    strspacing[spacingidx] <- strsp[i]
    if(emissions[i] == "1"){
      spacingidx <- spacingidx + 1
      strspacing[spacingidx] <- " "
    }
    spacingidx <- spacingidx + 1
  }
  return(paste(strspacing[1:spacingidx-1], collapse=""))
}


text <- text(input$spacetrain)


fullrawcorpus <- makeCorpus(text)

oprob <- observProb(fullrawcorpus)

trprob <- getTransprob(paste(fullrawcorpus$status,collapse=""))


hmm <- initHMM(c("0", "1"), oprob$char, 
               startProbs=c(.9,.1), transProbs=trprob, emissionProbs=t(as.matrix(oprob[,c(5,6)])))

spacingeffect = function(a){
  a = gsub('<[^\\)]+>', "",  a)
  a = unlist(strsplit(a, '[[:space:]|[:punct:]]'))
  ac = c()
  for(i in a){
    i = gsub('[\\d|A-Za-z]','',i)
    c = ifelse(nchar(i) > 5, spacing(hmm, i), i)
    ac = c(ac,c)}
  a = paste(ac, collapse=" ")
  a = str_replace_all(a, '[[:space:]]+', ' ')
  gsub("^\\s+", "",a)
}

spsp = function(a){
  ac = c()
  for (v in a){
    tryCatch({
      p = spacingeffect(v)
      ac = c(ac,p)
      dev.off()
    }, error=function(e){cat("ERROR :",conditionMessage(e), "\n")})
  }
  ac
}
tt <- readLines(doc$datapath)
spsp(tt)



spacingoutcome <- reactive({
  
  input$spacinging
  
  # ...but not for anything else
  isolate({
    withProgress({
      setProgress(message = "spacing now")
      
      spaceffect(input$spaceoutput)
    })
  })
})