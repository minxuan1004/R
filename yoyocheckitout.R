library(dplyr)
library(ggplot2)
app <- read.csv("C:/Users/leand/Desktop/r/AppleStore.csv")

View(app)

# appp<-head(app,50)
apppp = app %>% filter(!grepl(x = user_rating,pattern = '[a-zA-Z]' )) %>% 
  filter(user_rating != "") %>% 
  filter(grepl(x = user_rating,pattern = '[0-5]{1}' )) %>% 
  filter(as.numeric(as.character(user_rating)) <= 5) %>% 
  arrange(-as.numeric(as.character(user_rating))) %>% .[1:100,] %>% 
  group_by(prime_genre) %>% summarise(n=n()) %>% as.data.frame()



 
# apppp <- appp %>% group_by(prime_genre) %>% summarise(n=n()) %>% as.data.frame()
ggplot(apppp,aes(x= reorder(prime_genre,-n),y=n, fill = prime_genre))+
  geom_bar(stat = 'identity')
  




















