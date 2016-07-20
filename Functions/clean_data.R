clean_data <- function(input_file){
 temp <- read.csv(input_file , header = TRUE)
 hold_1 <- temp[1:3]
 hold_2 <- temp[5:9]
 hold_3 <- temp[17]
 hold <- c(hold_1,hold_2,hold_3)
 return(hold)
}

