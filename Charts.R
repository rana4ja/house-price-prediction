# Task 1a Rana Aljabr - 219033501 
library(dplyr)
library(reshape2)
library(ggplot2)

data = read.csv("/Users/ranaaljabr/Desktop/Rana Aljabr - Lab Final/house-prices-advanced-regression-techniques/train.csv")


#area grouping
areas = data %>% select(MasVnrArea, BsmtFinSF1, BsmtUnfSF, TotalBsmtSF,
                        X1stFlrSF, X2ndFlrSF,GrLivArea, GarageArea, 
                        PoolArea, WoodDeckSF, OpenPorchSF, EnclosedPorch, 
                        X3SsnPorch, ScreenPorch)
areas <- melt(areas)
ggplot(data = areas, aes(x=variable, y=value)) + labs(x="feature", y="area") + geom_boxplot() + ylim(0, 3500)

#rooms grouping
rooms = data %>%
  select(BsmtFullBath, BsmtHalfBath, FullBath,
         HalfBath, BedroomAbvGr, KitchenAbvGr,
         TotRmsAbvGrd)
rooms <- melt(rooms)
ggplot(data = rooms, aes(x=variable, y=value)) + labs(x="feature", y="count") + geom_boxplot() + ylim(0, 15)