# Lubridate PACKAGE
if (!require("pacman")) install.packages("pacman")

# Use pacman to load add-on packages as desired
pacman::p_load(pacman, data.table, lubridate) 


####
# Cheat-sheet:
# https://evoldyn.gitlab.io/evomics-2018/ref-sheets/R_lubridate.pdf
####


# Today 
day <- today()
class(day)
str(day)

# Now 
datetime <- now()
class(datetime)
str(datetime)

rm(list = ls())
# Converting strings to dates

string1 <- "2020-09-22"
string2 <- "2020-09-22 17:00:00"

date <- as_date(string1)

datetime <- as_datetime(string2)

rm(list = ls())


# Formating Dates
dateFormat1 <- "20200922"
dateFormat2 <- "09-22-2020"
dateFormat3 <- "22/09/2020"
dateFormat4 <- "09-22-2020 17:00:00"
dateFormat5 <- "20200922 170000"
ymd(dateFormat1)
mdy(dateFormat2)
dmy(dateFormat3)
mdy_hms(dateFormat4)
d <- ymd_hms(dateFormat5)

class(d)

rm(list = ls())


# Component
#get data
calendar <- fread("C:\\Users\\Carmel\\Desktop\\EinBD\\calendar_clean.csv")
calendar

class(calendar$date)
calendar$date <- as_date(calendar$date)

sample(900000, 20)
sub_calendar <- calendar[sample(900000, 20), .(listing_id, date)]
sub_calendar


year(sub_calendar$date)
month(sub_calendar$date)
mday(sub_calendar$date)
yday(sub_calendar$date)
wday(sub_calendar$date)
# i dont have it:
d <- as_datetime("2020-03-01 12:42:56")
hour(d)
minute(d)
second(d)

month(sub_calendar$date, label = TRUE)
sub_calendar$wday <- wday(sub_calendar$date, label = TRUE)

sub_calendar


# difftime object
startDate <- sub_calendar[2, date]
endDate <- sub_calendar[5, date]

startDate + minutes(31)
startDate + hours(5)

startDate > endDate

##################################################################################
# Clear environment
rm(list = ls()) 

# Clear packages
p_unload(all)  # Remove all add-ons

# Clear plots
dev.off()  # But only if there IS a plot

# Clear console
cat("\014")  # ctrl+L

# Clear mind :)
