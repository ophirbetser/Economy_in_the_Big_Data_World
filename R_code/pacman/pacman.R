#########################################
### The built-in way to use libraries ###
#########################################
#install
install.packages("name_of_package")

#loud
library(name_of_package)


#######################
### The pacman way! ###
#######################
if (!require("pacman")){install.packages("pacman")}
# Use pacman to load add-on packages as desired
pacman::p_load(pacman, data.table ,ggplot2, ggThemeAssist,
               lubridate) 

# Clear packages
p_unload(all)  # Remove all add-ons

# Clear console
cat("\014")  # ctrl+L

