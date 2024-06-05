# Script to Load and Install the Required Packages

# Install the `pak` package
if (!requireNamespace("pak", quietly = TRUE)) {
  install.packages("pak")
}

packages <- c(
"tidyverse",# for data manipulation
"sf",# for simple feature operations
"here",# for managing files
"patchwork",# for plot organisation
"raster",# Load the 'raster' package for handling raster data
"exactextractr"# Load the 'exactextractr' package for extracting raster data
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
