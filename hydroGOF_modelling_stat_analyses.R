rm(list=ls(all=TRUE)) #if you wanna remove all variables from list to make a clear working space
setwd("D:/WorkingDirectory") # Set the working directory
library(hydroGOF)
### Prepared data ###
# For this analyses, we have csv's of observed (obs) and simulated (sim) data, separately for calibration and validation period. #
# Each csv is a single column of discharge results, depending on the lenght of calibration/verification period #

##### Stats for calibration period ######
Point1_cal_sim <-read.table("Point1_cal_sim.csv",header=F, sep =",") # read csv file
Point1_cal_obs <-read.table("Point1_cal_obs.csv",header=F, sep=",") # read csv file

Point1_cal_KGE_value <- KGE(Point1_cal_sim , Point1_cal_obs)
Point1_cal_KGE_value

Point1_cal_stat <- gof.data.frame(sim=Point1_cal_sim,obs=Point1_cal_obs) #main Goodness-of-Fit Functions
Point1_cal_stat

##### Stats for validation period ######
Point1_ver_sim <-read.table("Point1_ver_sim.csv",header=F, sep =",") # read csv file
Point1_ver_obs <-read.table("Point1_ver_obs.csv",header=F, sep=",") # read csv file

Point1_ver_KGE_value <- KGE(Point1_ver_sim , Point1_ver_obs)
Point1_ver_KGE_value

Point1_ver_stat <- gof.data.frame(sim=Point1_ver_sim,obs=Point1_ver_obs) #main Goodness-of-Fit Functions
Point1_ver_stat

#################################
# If you want to check differences between KGE 2009 and KGE 2012, you can perform additioanlly this part of code #
### KGE 2009 - calibration period
Point1_cal_KGE2009 <- KGE.data.frame(sim=Point1_cal_sim, obs=Point1_cal_obs, s=c(1,1,1), na.rm=TRUE, method=c("2009"), out.type=c("full"))
Point1_cal_KGE_elements_2009 <- Point1_cal_KGE2009[["KGE.elements"]]
Point1_cal_KGE_value2_2009 <- Point1_cal_KGE2009[["KGE.value"]]

### KGE 2012
Point1_cal_KGE2012 <- KGE.data.frame(sim=Point1_cal_sim, obs=Point1_cal_obs, s=c(1,1,1), na.rm=TRUE, method=c("2012"), out.type=c("full"))
Point1_cal_KGE_elements_2012 <- Point1_cal_KGE2012[["KGE.elements"]]
Point1_cal_KGE_value2_2012 <- Point1_cal_KGE2012[["KGE.value"]]

#Print all analysed KGE 2009 and KGE 2012 values
Point1_cal_KGE_elements_2009
Point1_cal_KGE_value2_2009
Point1_cal_KGE_elements_2012
Point1_cal_KGE_value2_2012
