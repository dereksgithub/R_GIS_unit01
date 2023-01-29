# This is a short script for R basics, part 1
################################ Notes for VCS: ############################
# push: git push -u origin main
# Reset connections: git config http.postBuffer 524288000
# The above reset command can help when errno10054 pops up. 
################################ Notes for VCS: ############################

# Pt1: tidyverse (dplyr, ggplot2...)

# load the packages needed:
library(sf)
library(tidyverse)
library(terra)   
library(spData)        # load geographic data
library(spDataLarge)
library(rgeos)
library(rnaturalearth)
# push: git push -u origin main
# Reset connections: git config http.postBuffer 524288000
# The above reset command can help when errno10054 pops up. 





# Load the data:
world_dfr = st_read(system.file("shapes/world.shp", package = "spData"))
#> Reading layer `world' from data source 
#>   `/usr/local/lib/R/site-library/spData/shapes/world.shp' using driver `ESRI Shapefile'
#> Simple feature collection with 177 features and 10 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: -180 ymin: -89.9 xmax: 180 ymax: 83.6
#> Geodetic CRS:  WGS 84
world_tbl = read_sf(system.file("shapes/world.shp", package = "spData"))
class(world_dfr)
#> [1] "sf"         "data.frame"
class(world_tbl)
#> [1] "sf"         "tbl_df"     "tbl"        "data.frame"
# Check the titles


# Pre-processing


# Row/Column operations with tidyverse


# Handling missing values:






# Overview of cleaned data 



# Q-GIS Connections


