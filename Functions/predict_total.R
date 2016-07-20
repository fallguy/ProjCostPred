predict_total <- function(object, data.frame){
  con <- predict(object, data.frame)
  
  ACQ <- readline("Are there Bldg Acquisition Costs? (y/n) ")
  if(ACQ == "n"){
    ACQ <- 0
  }
  else if(ACQ == "y"){
    ACQ <- as.integer(readline("Enter ACQ value: "))
  }
  
  DPT <- readline("Are there Dept Store Contributions? (y/n) ")
  if(DPT == "n"){
    DPT <- 0
  }
  else if(DPT == "y"){
    DPT <- as.integer(readline("Enter DPT value: "))
  }
  
  CNT <- con*.01
  DES <- con*.08
  DEV <- con*.02
  PFE <- con*.03
  
  return(data.frame(Construction_Cost = con, Grand_Total = con+CNT+DES+DEV+PFE+ACQ+DPT))
}

