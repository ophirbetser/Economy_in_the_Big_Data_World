################################################################################
####T#I#T#L#E###################################################################
####################################################         ###      ##########
#### File Name:   ESQUISSER                      ### ####### ###  ### ##########
#### Date:        2021-04-18                     ### ####### ###        ########
#### Author:      Ophir Betser                   ### ####### ### ###### ########
#### Author Mail: ophir.betser@gmail.com         ### ####### ### ###### ########
####################################################         ###        ########
####L#I#B#R#A#R#I#S#############################################################
.rs.restartR()      # restart R studio                     #####################
options(scipen=999) # Disables scientific notation         #####################   
options(digits=6)   # Limits the number of digits printed  #####################       
if (!require("pacman")){                                   #####################
  install.packages("pacman")}                            #####################
pacman::p_load(pacman, esquisse, data.table,  
               ggplot2, dplyr)
################################################################################
####S#C#R#I#P#T#################################################################

##############
# esquisser: #
##############
dt <- iris %>% as.data.table()

esquisse:::esquisser()
esquisser(viewer = "pane")

rm(list = ls())

############################
# create an office object: #
############################
# load data:
dt <- diamonds %>% as.data.table() 

# create plot:
g1 <- ggplot(dt[1:100], aes(y, z, color = color)) +
  geom_point(size = 2) + 
  labs(# rename labels
    title = "Bar Chart", 
    subtitle = "hello :)", 
    x = "width",
    y = "depth",
    caption = "I love R") +
  theme(# axis
    axis.text.x = element_text(size = 13, vjust=0.6, color = "black"),
    axis.text.y = element_text(size = 13, vjust=0.6, color = "black"),
    axis.line = element_line(linetype = "solid", size = 1.2),
    axis.ticks = element_line(linetype = "blank"),
    # panel
    panel.background = element_rect(fill = NA),
    # legend
    legend.key = element_rect(fill = NA), 
    legend.background = element_rect(fill = NA, colour = "black",
                                     linetype = "solid"), 
    legend.text = element_text(face = "bold.italic"), 
    legend.title = element_text(size = 14, face = "bold"),
    legend.position = "top", legend.direction = "horizontal",
    # text: title, subtitle, caption
    plot.title = element_text(family = "serif",
                              size = 18, face = "bold"),
    plot.subtitle = element_text(size = 12, 
                                 colour = "black", hjust = 0.02), 
    plot.caption = element_text(face = "italic", colour = "black"), 
    axis.title = element_text(size = 12, face = "bold"))

# manually:
g1

# via code:
esquisse:::ggplot_to_ppt("g1")

################################################################################

#change_theme

# download Rstudio theme:
#https://tmtheme-editor.herokuapp.com/#!/editor/theme/Monokai


################################################################################
####C#L#E#A#N#I#N#G#####################      ####  #####  ##        #### ######
rm(list = ls()) # Clear environment  ###  ### ###### ### #### ########### ######                           
p_unload(all)   # Clear packages     ###        ##### # #####  # # # #### ######               
dev.off()       # Clear plots        ### ###### ###### ###### # # # ##### ######
cat("\014")     # Clear console      ### ###### ###### ###### ##################              
########################################        ####     ####        #### ######
################################################################################