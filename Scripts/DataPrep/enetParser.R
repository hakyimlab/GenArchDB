args<-commandArgs(trailingOnly=T)
filenameIn<-as.character(args[1])
data<-read.table(filenameIn, sep='\t', header=TRUE)
dataOut<-data[-c(6,2,3,4,5,8)]
head(dataOut)
filenameOut<-paste("GenArchDB_",filenameIn, sep="")
results<-file(filenameOut, "w")
write.table(dataOut,  results, append=FALSE, quote=TRUE, sep="\t", row.names=FALSE)
close(results)
