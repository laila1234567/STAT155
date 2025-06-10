raw <- read.csv(file="https://raw.githubusercontent.com/fivethirtyeight/data/refs/heads/master/masculinity-survey/raw-responses.csv")
write.csv(raw, file="Project1/data/raw.csv")

## create a binary variable from Q11

raw$Q11binary <- ifelse(raw$q0011_0002 == "Greater risk of being accused of sexual harassment", 1, 0)

raw$cry_regular <- ifelse(raw$q0007_0004 %in% c("Often", "Sometimes"), 1, 0)
raw$changed_behavior <- ifelse(raw$q0015 == "Yes", 1, 0)
raw$reads_body <- ifelse(raw$q0020_0001 == "Read their physical body language to see if they are interested", 1, 0)
raw$method_verbalask <- ifelse(raw$q0020_0002 == "Ask for a verbal confirmation of consent", 1, 0)
raw$method_makeamove <- ifelse(raw$q0020_0003 == "Make a physical move to see how they react", 1, 0)
raw$method_everydiff <- ifelse(raw$q0020_0004 == "Every situation is different", 1, 0)
raw$method_unclear <- ifelse(raw$q0020_0005 == "It isn’t always clear how to gauge someone’s interest", 1, 0)
raw$method_other <- ifelse(!is.na(raw$q0020_0006), 1, 0)  


## raw$Q11binary <- ifelse(is.na(raw$q0011_0002) == TRUE , 0, 1)


## create a binary variable from Q20

## raw$Q20binary <- ifelse(raw$q0020_0001 == "Read their physical body language to see if they are interested", 1, 0)
# raw$Q20binary <- ifelse(raw$q0020_0002 == "Ask for a verbal confirmation of consent Make a physical move to see how they react", 1, 0)
# raw$Q20binary <- ifelse(raw$q0020_0003 == "Ask for a verbal confirmation of consent", 1, 0)
# raw$Q20binary <- ifelse(raw$q0020_0004 == "Ask for a verbal confirmation of consent", 1, 0)
