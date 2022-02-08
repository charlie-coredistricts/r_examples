library(dplyr)
library(tidyr)




ex_1_a <- read.csv("ex_1_a.csv")
ex_1_b <- read.csv("ex_1_b.csv")

inner <- ex_1_a %>%
  inner_join(ex_1_b)

inner_2 <- inner_join(ex_1_a,ex_1_b)

inner == inner_2

left <- ex_1_a %>%
  left_join(ex_1_b)

outer <- ex_1_a %>%
  full_join(ex_1_b) %>%
  mutate(Test_Score=replace_na(Test_Score,"missing")) %>%
  mutate(Demographic=replace_na(Demographic,"missing"))

ex_2_a <- read.csv("ex_2_a.csv")
ex_2_b <- read.csv("ex_2_b.csv")

inner_3 <- inner_3 <- ex_2_a %>%
  inner_join(ex_2_b)

inner_3 <- ex_2_a %>%
  inner_join(ex_2_b,by = c("Full.Name" = "Name" ))

inner_3 <- ex_2_a %>%
  mutate(Full.Name=tolower(Full.Name)) %>%
  inner_join(ex_2_b,by = c("Full.Name" = "Name" ))


ex_3_a <- read.csv("ex_3_a.csv")
ex_3_b <- read.csv("ex_3_b.csv")

ex_3_b <- ex_3_b %>% 
  separate(Name,c("First","Last"),sep = ",")

inner_4 <- ex_3_a %>% 
  inner_join(ex_3_b,c("First.Name"="First","Last.Name"="Last"))

inner_4 <- ex_3_a %>%
  mutate(Last.Name = as.character(Last.Name)) %>%
  inner_join(ex_3_b,c("First.Name"="First","Last.Name"="Last"))
  
#*
#*what to look for?
#*counts before and after?
#*do the types match?
#*should the join be left, inner or full?
#*what are the keys of the join?
#*What happens when we have duplicates?

  
  
  