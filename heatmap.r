#this loads the package: http://cran.r-project.org/web/packages/RColorBrewer/index.html
require("RColorBrewer") 

#this opens the National Variable csv file when placed on the desktop (follow these same steps for City Variables as well).
RNI_NatVar <- read.csv("~/Desktop/RNI_NatVar.csv")

#visual inspection
View(RNI_NatVar)

#This takes the text in the 1st column of names and converts them to Y axis labels.
row.names(RNI_NatVar) <- RNI_NatVar$ADM0

#This eliminates the “ADM0” column since we no longer need it.
RNI_NatVar <- RNI_NatVar[,2:10] 

#Converts table to matrix.
RNI_NatVar_matrix <- data.matrix(RNI_NatVar) 

#visual inspection to check header names, which show up in matrix view as a row.names header.
View(RNI_NatVar_matrix) 

#This is the code that actually makes the heat map. I’m using the RColorBrewer palette loaded in the first line.
RNI_NatVar_heatmap <- heatmap(RNI_NatVar_matrix, Rowv=NA, Colv=NA, col = brewer.pal(9, "Greens"), scale="column", margins=c(5,10))

#The number 9 in the brewer.pal code above is the number of shades. I initially tried 21 (the number of observations in the data) which generated the following error message.
Error: unexpected symbol in "RRI_heatmap <- heatmap(RRI_matrix, Rowv=NA, Colv=NA, col=brewer.pal (21, "Greens") scale" 

#You can find the maximum number of colors available in each color palette with this command:
brewer.pal.info

