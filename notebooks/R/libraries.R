##This should detect and install missing packages before loading them – hopefully!
list.of.packages <- c("dplyr", "plyr", "data.table", "MissForest", "MissMDA",
"Outliers", "EVIR", "Features", "RRF", "FactorMiner", "CCP",
"ggplot2", "googkleVis", "Rcharts", "car", "randomforest",
"Rminer", "CoreLearn", "caret", "BigRF", "CBA",
"RankCluster", "forecat", "LTSA", "survival", "Basta",
"LSMean", "Comparison", "RegTest", "ACD", "BinomTools",
"DAIM", "ClustEval", "SigClust", "PROC", "TimeROC", "Rcpp",
"parallel", "xml", "httr", "rjson", "jasonlite", "shiny",
"Rmarkdown", "tm", "OpenNLP", "sqldf", "RODBC", "rmonogodb", "formatR", "mapproj",
"maps", "knitr", "evaluate", "grid", "reshape2", "corrplot", "igraph", "Rcpp", "stringr")

new.packages <- list.of.packages[!(list.of.packages
%in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)
lapply(list.of.packages,function(x){library(x,character.only=TRUE)})