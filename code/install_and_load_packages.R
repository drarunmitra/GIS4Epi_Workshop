# Script to Load and Install the Required Packages

# Load Tidyverse
library('tidyverse')

# Create the list of packages to install and load
packages <- c(
  # General Packages
  "here", # for file paths and management
  "tidyverse", # meta package for tidy data management and preparation
  "epitrix", # for epidemiological data
  "janitor", # for data cleaning
  "HistData", # for historical data *we are using John Snow Data for this workshop
  "gtsummary", # for summary tables
  "RColorBrewer", # for color palettes
  
  # Spatial Packages  
  "sf", # for vector data (simple features)
  "raster", # for raster data
  "terra", # for raster data *alternative to raster package (faster)
  "tidyterra", # tidy operations for raster data
  "stars", # for plotting spatiotemporal data
  
  "gstat", # for geostatistical analysis
  "rgeoda", # for spatial analysis
  
  "tidygeocoder", # for geocoding addresses inti lat/long
  "osrm", # for routing and isochrones *uses Open Street Map
  
  "ggspatial", # for spatial data visualization
  "patchwork", # for arranging ggplots
  "leaflet" # for interactive maps
  )

# Install all the packages
packages |> pak::pak()

# Load all the packages
packages |> map(library, character.only = TRUE)

# Remove the `packages` object
# rm('packages')

# install.packages("sf")
# pak::pak("sf")
# library('sf')
