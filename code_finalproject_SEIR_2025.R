## Step 1: Retrieve required packages from library 
library(terra) #the terra package is used to import .tiff files as SpatRasters. 
library(spatstat)
library(usethis)
library(devtools)
library(imageRy)
library(ggplot2)
library(raster)
library(viridis)

## Step 2: Importing all data
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
