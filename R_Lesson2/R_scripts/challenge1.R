fence <- function(original, wrapper) {
 result <- paste0(wrapper, original, wrapper)
  result
} 

print(fence("Deirdre", 111))
