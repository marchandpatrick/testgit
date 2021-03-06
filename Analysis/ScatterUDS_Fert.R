############
# Create plot of UDS vs. Fertilizer Consumption
# Christopher Gandrud
# Updated 20 October 2014
###########

# Load packages
library(ggplot2)

# Load data
MainData <- read.csv("Analysis/Data/MainData.csv")

# Graph FertilizerConsumption and UDS
# Remove values of FertilizerConsumption less than 0.1
MainData <- subset(MainData, FertilizerConsumption > 0.1)

# Create Plot
UDSFert <- ggplot(MainData, aes(x = log(FertilizerConsumption), y = UDS)) +
        geom_point(alpha = I(0.1)) +
        stat_smooth(size = 2, method = "lm") +
        ylab("Democracy Score\n") + xlab("\nLog Fertilizer Consumption") +
        theme_bw(base_size = 15)

print(UDSFert)
