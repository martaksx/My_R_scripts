rm(list=ls(all=TRUE)) #if you wanna remove all variables from list
setwd("E:/SWATCUP_quantity_checking/input_files") # Set the working directory
library(hydroGOF)

##### Statystyki dla okresu kalibracji ######
SLUCHA_cal_sim <-read.table("SLU-CHA_cal_sim.csv",header=F, sep =",") # read csv file
SKOSKD_cal_sim <-read.table("SKO-SKD_cal_sim.csv",header=F, sep =",") # read csv file
SLUSOS_cal_sim <-read.table("SLU-SOS_cal_sim.csv",header=F, sep =",") # read csv file
# SKOSKD_cal_sim <- SKOSKD_cal_sim[,1] # covert it to vector

SLUCHA_cal_obs <-read.table("SLU-CHA_cal_obs.csv",header=F, sep=",") # read csv file
SKOSKD_cal_obs <-read.table("SKO-SKD_cal_obs.csv",header=F, sep=",") # read csv file
SLUSOS_cal_obs <-read.table("SLU-SOS_cal_obs.csv",header=F, sep=",") # read csv file
# SKOSKD_cal_obs <- SKOSKD_cal_obs[,1] # covert it to vector

KGE_value_SLUCHA_cal <- KGE(SLUCHA_cal_sim , SLUCHA_cal_obs)
KGE_value_SKOSKD_cal <- KGE(SKOSKD_cal_sim , SKOSKD_cal_obs)
KGE_value_SLUSOS_cal <- KGE(SLUSOS_cal_sim , SLUSOS_cal_obs)

KGE_value_SLUCHA_cal
KGE_value_SKOSKD_cal
KGE_value_SLUSOS_cal

SLUCHA_cal_stat <- gof.data.frame(sim=SLUCHA_cal_sim,obs=SLUCHA_cal_obs) #main Goodness-of-Fit Functions
SLUSOS_cal_stat <- gof.data.frame(sim=SLUSOS_cal_sim,obs=SLUSOS_cal_obs) #main Goodness-of-Fit Functions
SKOSKD_cal_stat <- gof.data.frame(sim=SKOSKD_cal_sim,obs=SKOSKD_cal_obs) #main Goodness-of-Fit Functions

SLUCHA_cal_stat
SLUSOS_cal_stat
SKOSKD_cal_stat

##### Statystyki dla okresu weryfikacji ######
SLUCHA_ver_sim <-read.table("SLU-CHA_ver_sim.csv",header=F, sep =",") # read csv file
SKOSKD_ver_sim <-read.table("SKO-SKD_ver_sim.csv",header=F, sep =",") # read csv file
SLUSOS_ver_sim <-read.table("SLU-SOS_ver_sim.csv",header=F, sep =",") # read csv file
# SKOSKD_cal_sim <- SKOSKD_cal_sim[,1] # covert it to vector

SLUCHA_ver_obs <-read.table("SLU-CHA_ver_obs.csv",header=F, sep=",") # read csv file
SKOSKD_ver_obs <-read.table("SKO-SKD_ver_obs.csv",header=F, sep=",") # read csv file
SLUSOS_ver_obs <-read.table("SLU-SOS_ver_obs.csv",header=F, sep=",") # read csv file
# SKOSKD_cal_obs <- SKOSKD_cal_obs[,1] # covert it to vector

KGE_value_SLUCHA_ver <- KGE(SLUCHA_ver_sim , SLUCHA_ver_obs)
KGE_value_SKOSKD_ver <- KGE(SKOSKD_ver_sim , SKOSKD_ver_obs)
KGE_value_SLUSOS_ver <- KGE(SLUSOS_ver_sim , SLUSOS_ver_obs)

KGE_value_SLUCHA_ver
KGE_value_SKOSKD_ver
KGE_value_SLUSOS_ver

SLUCHA_ver_stat <- gof.data.frame(sim=SLUCHA_ver_sim,obs=SLUCHA_ver_obs) #main Goodness-of-Fit Functions
SLUSOS_ver_stat <- gof.data.frame(sim=SLUSOS_ver_sim,obs=SLUSOS_ver_obs) #main Goodness-of-Fit Functions
SKOSKD_ver_stat <- gof.data.frame(sim=SKOSKD_ver_sim,obs=SKOSKD_ver_obs) #main Goodness-of-Fit Functions

SLUCHA_ver_stat
SLUSOS_ver_stat
SKOSKD_ver_stat

### KGE 2009
#KGE2009 <- KGE.data.frame(sim, obs, s=c(1,1,1), na.rm=TRUE, method=c("2009"), out.type=c("full"))
#KGE_elements_2009 <- KGE2009[["KGE.elements"]]
#KGE_value2_2009 <- KGE2009[["KGE.value"]]

### KGE 2012
#KGE2012 <- KGE.data.frame(sim, obs, s=c(1,1,1), na.rm=TRUE, method=c("2012"), out.type=c("full"))
#KGE_elements_2012 <- KGE2012[["KGE.elements"]]
#KGE_value2_2012 <- KGE2012[["KGE.value"]]

#KGE_value
#KGE_elements_2009
#KGE_value2_2009
#KGE_elements_2012
#KGE_value2_2012
