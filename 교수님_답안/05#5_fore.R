space <- function(a,b){
  return(a*b/2)
}
print(space(2,3))

message <- function(name){
  return(sprintf('%s´Ô, È¯¿µÇÕ´Ï´Ù.', name))
}
print(message('Ã¶¼ö'))

range <- function(v){
  return(max(v) - min(v))
}
print(range(c(10,4,2,6)))