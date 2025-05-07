library(tidyverse)

# Load your original data
raw <- read_csv("data/masculinity.csv")

# Filter down to relevant columns you selected in Project 1
filtered <- raw %>% 
  select(X, q0007_0001:q0007_0011, q0008_0001:q0008_0012, q0009,
         q0011_0001:q0011_0005, q0012_0001:q0012_0007, q0013, q0014, q0015, q0017,
         q0020_0001:q0020_0006, q0021_0001:q0021_0004, q0022, q0024,
         q0025_0001:q0025_0003, q0026, q0028, q0029, q0030)

# Save the result
write_csv(filtered, "data/filtered.csv")

