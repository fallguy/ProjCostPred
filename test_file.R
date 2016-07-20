###Intial Data Input###
raw_data = clean_data("file:///C:/Users/jpacker/Documents/Jeremy_DS_stuff/ProjCostPred/dummy_data_f2.csv")

#Print Data as a check#
print(raw_data)

###Plot Data###
with(raw_data, plot((SF_Building), CON, xlab="Sqft", ylab="Construction Costs"))

####Regression Analysis####
model = lm(CON ~ (SF_Building) + dummy_tier, data = raw_data)

###Test Fit of Model###
summary(model)
plot(model)


#Test Projects
project1 = project_object()
print(project1)



###Test Predictions###
con <- predict(model, project1)
predict_total(model, project1)
