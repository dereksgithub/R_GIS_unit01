# This is a short script for R basics, part 1
################################ Notes for VCS: ############################
# push: git push -u origin main
# 
# Reset connections: git config http.postBuffer 524288000
# The above reset command can help when errno10054 pops up. 
# or this:
# git config http.postBuffer 5000000000
# 
# pull:
# 
# rebase:
############################################################################

# R packages:
# Pt1: tidyverse (dplyr, ggplot2...)

# load the packages needed:
library(sf)
library(sp)
library(tidyverse)
library(terra)   
library(spData)        # load geographic data
library(spDataLarge)
library(rgeos)
library(rnaturalearth)
library(spatstat)

#
# in total, there are 10 atrributes for world:
plot(world[9]) # plot(world[1:10], max.plot = 10)
plot(world["pop"]) # which is equivalent to plot(world[10])

# combine all asian countries into one feature, and plot all of them in red 
world_asia = world[world$continent == "Asia", ]
asia = st_union(world_asia)
plot(world["pop"], reset = FALSE)
plot(asia, add = TRUE, col = "red")

# 


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
plot(world[3:6])
plot(world["pop"])


chn= world[world$name_long == "China", ]
plot(st_geometry(chn), expandBB = c(0, 0.2, 0.1, 1), col = "gray", lwd = 3)
plot(st_geometry(world_asia), add = TRUE)

# Pre-processing


# Row/Column operations with tidyverse


# Handling missing values:






# Overview of cleaned data 



# Q-GIS Connections


