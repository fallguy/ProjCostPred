project_object <- function(){
  proj_num <- readline("Enter Project Number: ")
  proj_num <- as.integer(proj_num)
  desc <- readline("Enter Project Description: ")
  desc <- as.character(desc)
  sf <- readline("Enter Project Sqft: ")
  sf <- as.integer(sf)
  reg <- readline("Enter Project Region: ")
  reg <- as.factor(reg)
  tier <- readline("Enter Project Tier: ")
  tier <- as.factor(tier)
  return(data.frame(Project = proj_num, 
                    Description = desc,
                    SF_Building = sf,
                    Region = reg,
                    dummy_tier = tier))
}
