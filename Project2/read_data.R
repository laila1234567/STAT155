#install.packages("tidyverse")
library(tidyverse)

raw <- read.csv(file="https://raw.githubusercontent.com/fivethirtyeight/data/refs/heads/master/masculinity-survey/raw-responses.csv")
write.csv(raw, file="raw.csv")



masculinity <- raw %>% 
  select(X, q0007_0001, q0007_0002, q0007_0003, q0007_0004, q0007_0005, 
         q0007_0006, q0007_0007, q0007_0008, q0007_0009, q0007_0010, 
         q0007_0011, q0008_0001, q0008_0002, q0008_0003, q0008_0004, 
         q0008_0005, q0008_0006, q0008_0007, q0008_0008, q0008_0009, 
         q0008_0010, q0008_0011, q0008_0012, q0009, q0011_0001, q0011_0002, 
         q0011_0003, q0011_0004, q0011_0005, q0012_0001, q0012_0002, q0012_0003, 
         q0012_0004, q0012_0005, q0012_0006, q0012_0007, q0013, q0014, q0015, 
         q0017, q0020_0001, q0020_0002, q0020_0003, q0020_0004, q0020_0005, 
         q0020_0006, q0021_0001, q0021_0002, q0021_0003, q0021_0004, q0022, 
         q0024, q0025_0001, q0025_0002, q0025_0003, q0026, q0028, q0029, q0030 )


write_csv(masculinity, file = "masculinity.csv")
