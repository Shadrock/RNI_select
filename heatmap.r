#this loads the package: http://cran.r-project.org/web/packages/RColorBrewer/index.html
require("RColorBrewer") 

#this opens the csv file when placed on the desktop 
RRI <- read.csv("~/Desktop/RRI.csv")

#visual inspection
View(RRI)

#This takes the text in the 1st column of names and converts them to Y axis labels.
row.names(RRI) <- RRI$ADM0 RRI <- RRI[,2:9]

#Converts table to matrix.
RRI_matrix <- data.matrix(RRI)

#visual inspection to check header names, which show up in matrix view as a row.names header
View(RRI_matrix)

#This is the code that actually makes the heat map. I’m using the RColorBrewer palette loaded in the first line.
RRI_heatmap <- heatmap(RRI_matrix, Rowv=NA, Colv=NA, col=brewer.pal (9, "Greens") scale="column", margins=c(5,10)) 

#The number 9 in the brewer.pal code above is the number of shades. I initially tried 21 (the number of observations in the data) which generated the following error message.
Error: unexpected symbol in "RRI_heatmap <- heatmap(RRI_matrix, Rowv=NA, Colv=NA, col=brewer.pal (21, "Greens") scale" 
