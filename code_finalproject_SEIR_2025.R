## Step 1: Retrieve required packages from library 
library(terra) #the terra package is used to import .tiff files as SpatRasters. It is also required to run functions from imageRy. 
library(spatstat)
library(usethis)
library(devtools)
library(imageRy) # imageRy is used to visualize satellite data. 
library(ggplot2)
library(raster)
library(viridis)

## Step 2: Importing all data
#Note: this data can be found in the files folder of this repository. 
# One year before fire 1: 2019-04-18
b02_20190418 <- rast("2019-04-18-00_00_2019-04-18-23_59_Sentinel-2_L1C_B02_(Raw).tiff")
b03_20190418 <- rast("2019-04-18-00_00_2019-04-18-23_59_Sentinel-2_L1C_B03_(Raw).tiff")
b04_20190418 <- rast("2019-04-18-00_00_2019-04-18-23_59_Sentinel-2_L1C_B04_(Raw).tiff")
b08_20190418 <- rast("2019-04-18-00_00_2019-04-18-23_59_Sentinel-2_L1C_B08_(Raw).tiff")
b11_20190418 <- rast("2019-04-18-00_00_2019-04-18-23_59_Sentinel-2_L1C_B11_(Raw).tiff")
b12_20190418 <- rast("2019-04-18-00_00_2019-04-18-23_59_Sentinel-2_L1C_B12_(Raw).tiff")

#A few days before fire 1: 2020-09-12
b02_20200417 <- rast("2020-04-17-00_00_2020-04-17-23_59_Sentinel-2_L1C_B02_(Raw).tiff")
b03_20200417 <- rast("2020-04-17-00_00_2020-04-17-23_59_Sentinel-2_L1C_B03_(Raw).tiff")
b04_20200417 <- rast("2020-04-17-00_00_2020-04-17-23_59_Sentinel-2_L1C_B04_(Raw).tiff")
b08_20200417 <- rast("2020-04-17-00_00_2020-04-17-23_59_Sentinel-2_L1C_B08_(Raw).tiff")
b11_20200417 <- rast("2020-04-17-00_00_2020-04-17-23_59_Sentinel-2_L1C_B11_(Raw).tiff")
b12_20200417 <- rast("2020-04-17-00_00_2020-04-17-23_59_Sentinel-2_L1C_B12_(Raw).tiff")

#Immediately after fire 1: 2020-06-24
b02_20200624 <- rast("2020-06-24-00_00_2020-06-24-23_59_Sentinel-2_L1C_B02_(Raw).tiff")
b03_20200624 <- rast("2020-06-24-00_00_2020-06-24-23_59_Sentinel-2_L1C_B03_(Raw).tiff")
b04_20200624 <- rast("2020-06-24-00_00_2020-06-24-23_59_Sentinel-2_L1C_B04_(Raw).tiff")
b08_20200624 <- rast("2020-06-24-00_00_2020-06-24-23_59_Sentinel-2_L1C_B08_(Raw).tiff")
b11_20200624 <- rast("2020-06-24-00_00_2020-06-24-23_59_Sentinel-2_L1C_B11_(Raw).tiff")
b12_20200624 <- rast("2020-06-24-00_00_2020-06-24-23_59_Sentinel-2_L1C_B12_(Raw).tiff")


#One year after fire 1: 2021-04-27 
b02_20210427 <- rast("2021-04-27-00_00_2021-04-27-23_59_Sentinel-2_L1C_B02_(Raw).tiff")
b03_20210427 <- rast("2021-04-27-00_00_2021-04-27-23_59_Sentinel-2_L1C_B03_(Raw).tiff")
b04_20210427 <- rast("2021-04-27-00_00_2021-04-27-23_59_Sentinel-2_L1C_B04_(Raw).tiff")
b08_20210427 <- rast("2021-04-27-00_00_2021-04-27-23_59_Sentinel-2_L1C_B08_(Raw).tiff")
b11_20210427 <- rast("2021-04-27-00_00_2021-04-27-23_59_Sentinel-2_L1C_B11_(Raw).tiff")
b12_20210427 <- rast("2021-04-27-00_00_2021-04-27-23_59_Sentinel-2_L1C_B12_(Raw).tiff")

#Two years after fire 1: 2022-04-17
b02_20220417 <- rast("2022-04-17-00_00_2022-04-17-23_59_Sentinel-2_L1C_B02_(Raw).tiff")
b03_20220417 <- rast("2022-04-17-00_00_2022-04-17-23_59_Sentinel-2_L1C_B03_(Raw).tiff")
b04_20220417 <- rast("2022-04-17-00_00_2022-04-17-23_59_Sentinel-2_L1C_B04_(Raw).tiff")
b08_20220417 <- rast("2022-04-17-00_00_2022-04-17-23_59_Sentinel-2_L1C_B08_(Raw).tiff")
b11_20220417 <- rast("2022-04-17-00_00_2022-04-17-23_59_Sentinel-2_L1C_B11_(Raw).tiff")
b12_20220417 <- rast("2022-04-17-00_00_2022-04-17-23_59_Sentinel-2_L1C_B12_(Raw).tiff")

#A few days before fire 2: 2022-08-25
b02_20220825 <- rast("2022-08-25-00_00_2022-08-25-23_59_Sentinel-2_L1C_B02_(Raw).tiff")
b03_20220825 <- rast("2022-08-25-00_00_2022-08-25-23_59_Sentinel-2_L1C_B03_(Raw).tiff")
b04_20220825 <- rast("2022-08-25-00_00_2022-08-25-23_59_Sentinel-2_L1C_B04_(Raw).tiff")
b08_20220825 <- rast("2022-08-25-00_00_2022-08-25-23_59_Sentinel-2_L1C_B08_(Raw).tiff")
b11_20220825 <- rast("2022-08-25-00_00_2022-08-25-23_59_Sentinel-2_L1C_B11_(Raw).tiff")
b12_20220825 <- rast("2022-08-25-00_00_2022-08-25-23_59_Sentinel-2_L1C_B12_(Raw).tiff")

#A few days after fire 2: 2022-09-12
b02_20220912 <- rast("2022-09-12-00_00_2022-09-12-23_59_Sentinel-2_L1C_B02_(Raw).tiff")
b03_20220912 <- rast("2022-09-12-00_00_2022-09-12-23_59_Sentinel-2_L1C_B03_(Raw).tiff")
b04_20220912 <- rast("2022-09-12-00_00_2022-09-12-23_59_Sentinel-2_L1C_B04_(Raw).tiff")
b08_20220912 <- rast("2022-09-12-00_00_2022-09-12-23_59_Sentinel-2_L1C_B08_(Raw).tiff")
b11_20220912 <- rast("2022-09-12-00_00_2022-09-12-23_59_Sentinel-2_L1C_B11_(Raw).tiff")
b12_20220912 <- rast("2022-09-12-00_00_2022-09-12-23_59_Sentinel-2_L1C_B12_(Raw).tiff")

#Three years after fire 1: 2023-04-05
b02_20230405 <- rast("2023-04-05-00_00_2023-04-05-23_59_Sentinel-2_L1C_B02_(Raw).tiff")
b03_20230405 <- rast("2023-04-05-00_00_2023-04-05-23_59_Sentinel-2_L1C_B03_(Raw).tiff")
b04_20230405 <- rast("2023-04-05-00_00_2023-04-05-23_59_Sentinel-2_L1C_B04_(Raw).tiff")
b08_20230405 <- rast("2023-04-05-00_00_2023-04-05-23_59_Sentinel-2_L1C_B08_(Raw).tiff")
b11_20230405 <- rast("2023-04-05-00_00_2023-04-05-23_59_Sentinel-2_L1C_B11_(Raw).tiff")
b12_20230405 <- rast("2023-04-05-00_00_2023-04-05-23_59_Sentinel-2_L1C_B12_(Raw).tiff")

#Four years after fire 1: 2024-04-29
b02_20240429 <- rast("2024-04-29-00_00_2024-04-29-23_59_Sentinel-2_L1C_B02_(Raw).tiff")
b03_20240429 <- rast("2024-04-29-00_00_2024-04-29-23_59_Sentinel-2_L1C_B03_(Raw).tiff")
b04_20240429 <- rast("2024-04-29-00_00_2024-04-29-23_59_Sentinel-2_L1C_B04_(Raw).tiff")
b08_20240429 <- rast("2024-04-29-00_00_2024-04-29-23_59_Sentinel-2_L1C_B08_(Raw).tiff")
b11_20240429 <- rast("2024-04-29-00_00_2024-04-29-23_59_Sentinel-2_L1C_B11_(Raw).tiff")
b12_20240429 <- rast("2024-04-29-00_00_2024-04-29-23_59_Sentinel-2_L1C_B12_(Raw).tiff")

## Step 3: First glance, natural colour images
#First, we check what the area looked like to the human eye at each stage of the research.
#To do this we create the 'natural colour'. For this, we use bands 4, 3, and 2.
#To make it compatible with the im.plotRGB function, we stack the bands into one. 
sent_20190418 <- c(b02_20190418, b03_20190418, b04_20190418, b08_20190418, b11_20190418, b12_20190418)
sent_20200417 <- c(b02_20200417, b03_20200417, b04_20200417, b08_20200417, b11_20200417, b12_20200417)
sent_20200624 <- c(b02_20200624, b03_20200624, b04_20200624, b08_20200624, b11_20200624, b12_20200624)
sent_20210427 <- c(b02_20210427, b03_20210427, b04_20210427, b08_20210427, b11_20210427, b12_20210427)
sent_20220417 <- c(b02_20220417, b03_20220417, b04_20220417, b08_20220417, b11_20220417, b12_20220417)
sent_20220825 <- c(b02_20220825, b03_20220825, b04_20220825, b08_20220825, b11_20220825, b12_20220825)
sent_20220912 <- c(b02_20220912, b03_20220912, b04_20220912, b08_20220912, b11_20220912, b12_20220912)
sent_20230405 <- c(b02_20230405, b03_20230405, b04_20230405, b08_20230405, b11_20230405, b12_20230405)
sent_20240429 <- c(b02_20240429, b03_20240429, b04_20240429, b08_20240429, b11_20240429, b12_20240429)

#Next we create a list of the images and the corresponding dates. These will be the captions. 
sent_list <- list(sent_20190418, sent_20200417, sent_20200624, sent_20210427, sent_20220417, sent_20220825, sent_20220912, sent_20230405, sent_20240429)
captions <- c("18-04-19: 1 year before fire 1", "17-04-20: right before fire 1", "24-06-20: right after fire 1", 
              "27-04-2021: 1 year after fire 1","17-04-22: 2 years after fire 1", "25-08-22: right before fire 2", 
              "12-09-22: right after fire 2", "05-04-23: 3 years after fire 1", "29-04-24: 4 years after fire 1")

# Now that we have a list containing all our data, we can use a for() loop to plot a natural colour image. 
dev.off()
par(mfrow = c(3, 3), mar = c(5,4,4,4), oma=c(5,10,5,10))
for (i in seq_along(sent_list)) {
  im.plotRGB(sent_list[[i]], r = 3, g = 2, b = 1) #Given that band 1 is not in our list, band 4 becomes 3, 3 becomes 2, and 2 becomes 1. 
  mtext(captions[i], side = 1, line = 4, cex = 0.5, font = 3, col = "black")
}

#Looking at these natural colour images gives you some idea about the damage caused by the fires. 
#However, it is difficult to compare and prone to subjective judgement. 
#To assess the damage more precisely, we use the normalized difference vegetation index (NDVI). 
#For sentinel 2 data, NDVI is given as (B8-B4)/(B8+B4).

#We make a function for calculating the NDVI for every year, as follows: 
NDVI <- function(x,y){ 
  NDVI=((x-y)/(x+y))
  return(NDVI)
}

#Using the function: 
NDVI_20190418 <- NDVI(b08_20190418, b04_20190418)
NDVI_20200417 <- NDVI(b08_20200417, b04_20200417)
NDVI_20200624 <- NDVI(b08_20200624, b04_20200624)
NDVI_20210427 <- NDVI(b08_20210427, b04_20210427)
NDVI_20220417 <- NDVI(b08_20220417, b04_20220417)
NDVI_20220825 <- NDVI(b08_20220825, b04_20220825)
NDVI_20220912 <- NDVI(b08_20220912, b04_20220912)
NDVI_20230405 <- NDVI(b08_20230405, b04_20230405)
NDVI_20240429 <- NDVI(b08_20240429, b04_20240429)

#We start with an overview: what do all these look like next to one another?
#First we need to make sure that the legend is consistent for every plot. 
#Find total minimum and maximum values to create a legend / colour scheme that is consistent for every plot.  

ndvi_list <- list(NDVI_20190418, NDVI_20200417, NDVI_20200624, NDVI_20210427, 
                  NDVI_20220417, NDVI_20220825, NDVI_20220912, NDVI_20230405, 
                  NDVI_20240429)
ndvi_min <- min(sapply(ndvi_list, function(x) min(values(x), na.rm = TRUE)))
ndvi_max <- max(sapply(ndvi_list, function(x) max(values(x), na.rm = TRUE)))

#Again, we make the plots with a loop. We use ndvi_min and ndvi_max to determine the range. 
dev.off()
par(mfrow = c(3, 3), mar = c(5, 4, 2, 1))
for (i in seq_along(ndvi_list)) {
  plot(ndvi_list[[i]], axes=TRUE, range=c(ndvi_min, ndvi_max))
  mtext(captions[i], side = 1, line = 4, cex = 0.5, font = 1, col = "black", outer = FALSE)
}



