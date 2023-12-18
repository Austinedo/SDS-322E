library(tidyverse)

?diamonds

str(diamonds)
summary(ahd589$carat)

ahd589 <- diamonds

ahd589 <- mutate(ahd589, top4c = ifelse( (carat > 1.0400) & (cut == 'Ideal' | cut == 'Premium') & (color == 'D' | color == 'E' | color == 'F') & (clarity == 'IF' | clarity == 'VVS1' | clarity == 'VVS2'), TRUE, FALSE))

sum(ahd589$top4c == TRUE)                 
