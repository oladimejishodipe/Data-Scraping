library(rvest)
library(dplyr)


#####  ##############
##   2021 - 2022
##########       ###################
link1 = "https://www.congress.gov/members?pageSort=party&pageSize=250&q=%7B%22chamber%22%3A%22House%22%2C%22congress%22%3A117%7D"
page1 = read_html(link1)

name = page1 %>% html_nodes("#main a") %>% html_text()
B<- data.frame(name)
names<-B[-c(501, 502, 503), ]  
names<- data.frame(names)

states = page1 %>% html_nodes(".result-item:nth-child(1) span") %>% html_text()
States<- data.frame(states)
party = page1 %>% html_nodes(".result-item:nth-child(3) span") %>% html_text()
Party<- data.frame(party)

Year2021_2022_1<- cbind(names, States, Party )

link2 = "https://www.congress.gov/members?pageSort=party&q=%7B%22chamber%22%3A%22House%22%2C%22congress%22%3A%22117%22%7D&pageSize=250&page=2"
page2 = read_html(link2)

name2 = page2 %>% html_nodes("#main a") %>% html_text()
B2<- data.frame(name2)
names<-B2[-c(395, 396, 397), ]  
names<- data.frame(names)

states<-page2 %>% html_nodes(".result-item:nth-child(1) span") %>% html_text()
States<- data.frame(states)
party = page2 %>% html_nodes(".result-item:nth-child(3) span") %>% html_text()
Party<- data.frame(party)

Year2021_2022_2<- cbind(names, States, Party)

Year2021_2022<-rbind(Year2021_2022_1, Year2021_2022_2)

Year2021_20222<-Year2021_2022[!duplicated(Year2021_2022$names),]

#####  ##############
##   2019 - 2020
##########       ###################
link1 = "https://www.congress.gov/members?pageSort=party&pageSize=250&q={%22chamber%22:%22House%22,%22congress%22:116}"
page1 = read_html(link1)

name = page1 %>% html_nodes("#main a") %>% html_text()
B<- data.frame(name)
names<-B[-c(501, 502, 503), ]  
names<- data.frame(names)

states = page1 %>% html_nodes(".result-item:nth-child(1) span") %>% html_text()
States<- data.frame(states)
party = page1 %>% html_nodes(".result-item:nth-child(3) span") %>% html_text()
Party<- data.frame(party)

Year2019_2020_1<- cbind(names, States, Party )

link2 = "https://www.congress.gov/members?pageSort=party&q=%7B%22chamber%22%3A%22House%22%2C%22congress%22%3A%22116%22%7D&pageSize=250&page=2"
page2 = read_html(link2)

name = page2 %>% html_nodes("#main a") %>% html_text()
B2<- data.frame(name)
names<-B2[-c(397, 398, 399), ]  
names<- data.frame(names)

states<-page2 %>% html_nodes(".result-item:nth-child(1) span") %>% html_text()
States<- data.frame(states)
party = page2 %>% html_nodes(".result-item:nth-child(3) span") %>% html_text()
Party<- data.frame(party)

Year2019_2020_2<- cbind(names, States, Party)

Year2019_2020<-rbind(Year2019_2020_1, Year2019_2020_2)

Year2019_20200<-Year2019_2020[!duplicated(Year2019_2020$names),]




#####  ##############
##   2017 - 2018
##########       ###################
link1 = "https://www.congress.gov/members?pageSort=party&pageSize=250&q=%7B%22chamber%22%3A%22House%22%2C%22congress%22%3A115%7D"
page1 = read_html(link1)

name = page1 %>% html_nodes("#main a") %>% html_text()
B<- data.frame(name)
names<-B[-c(501, 502, 503), ]  
names<- data.frame(names)


states = page1 %>% html_nodes(".result-item:nth-child(1) span") %>% html_text()
States<- data.frame(states)
party = page1 %>% html_nodes(".result-item:nth-child(3) span") %>% html_text()
Party<- data.frame(party)

Year2017_2018_1<- cbind(names, States, Party )


link2 = "https://www.congress.gov/members?pageSort=party&q=%7B%22chamber%22%3A%22House%22%2C%22congress%22%3A%22115%22%7D&pageSize=250&page=2"
page2 = read_html(link2)

name2 = page2 %>% html_nodes("#main a") %>% html_text()
B2<- data.frame(name2)
names<-B2[-c(413, 414, 415), ]  
names<- data.frame(names)

states<-page2 %>% html_nodes(".result-item:nth-child(1) span") %>% html_text()
States<- data.frame(states)
party = page2 %>% html_nodes(".result-item:nth-child(3) span") %>% html_text()
Party<- data.frame(party)


Year2017_2018_2<- cbind(names, States, Party)

Year2017_2018<-rbind(Year2017_2018_1, Year2017_2018_2)

Year2017_20188<-Year2017_2018[!duplicated(Year2017_2018$names),]



#####  ##############
##   2015 - 2016
##########       ###################
link1 = "https://www.congress.gov/members?pageSort=party&pageSize=250&q=%7B%22chamber%22%3A%22House%22%2C%22congress%22%3A114%7D"
page1 = read_html(link1)

name = page1 %>% html_nodes("#main a") %>% html_text()
B<- data.frame(name)
names<-B[-c(501, 502, 503), ]  
names<- data.frame(names)

states = page1 %>% html_nodes(".result-item:nth-child(1) span") %>% html_text()
States<- data.frame(states)
party = page1 %>% html_nodes(".result-item:nth-child(3) span") %>% html_text()
Party<- data.frame(party)

Year2015_2016_1<- cbind(names, States, Party )

link2 = "https://www.congress.gov/members?pageSort=party&q=%7B%22chamber%22%3A%22House%22%2C%22congress%22%3A%22114%22%7D&pageSize=250&page=2"
page2 = read_html(link2)

name2 = page2 %>% html_nodes("#main a") %>% html_text()
B2<- data.frame(name2)
names<-B2[-c(395, 396, 397), ]  
names<- data.frame(names)

states<-page2 %>% html_nodes(".result-item:nth-child(1) span") %>% html_text()
States<- data.frame(states)
party = page2 %>% html_nodes(".result-item:nth-child(3) span") %>% html_text()
Party<- data.frame(party)

Year2015_2016_2<- cbind(names, States, Party)

Year2015_2016<-rbind(Year2015_2016_1, Year2015_2016_2)

Year2015_20166<-Year2015_2016[!duplicated(Year2015_2016$names),]



#####  ##############
##   2013 - 2014
##########       ###################
link1 = "https://www.congress.gov/members?pageSort=party&pageSize=250&q=%7B%22chamber%22%3A%22House%22%2C%22congress%22%3A113%7D"
page1 = read_html(link1)

name = page1 %>% html_nodes("#main a") %>% html_text()
B<- data.frame(name)
names<-B[-c(501, 502, 503), ]  
names<- data.frame(names)

states = page1 %>% html_nodes(".result-item:nth-child(1) span") %>% html_text()
States<- data.frame(states)
party = page1 %>% html_nodes(".result-item:nth-child(3) span") %>% html_text()
Party<- data.frame(party)

Year2013_2014_1<- cbind(names, States, Party )


link2 = "https://www.congress.gov/members?pageSort=party&q=%7B%22chamber%22%3A%22House%22%2C%22congress%22%3A%22113%22%7D&pageSize=250&page=2"
page2 = read_html(link2)

name2 = page2 %>% html_nodes("#main a") %>% html_text()
B2<- data.frame(name2)
names<-B2[-c(401, 402, 403), ]  
names<- data.frame(names)

states<-page2 %>% html_nodes(".result-item:nth-child(1) span") %>% html_text()
States<- data.frame(states)
party = page2 %>% html_nodes(".result-item:nth-child(3) span") %>% html_text()
Party<- data.frame(party)

Year2013_2014_2<- cbind(names, States, Party)

Year2013_2014<-rbind(Year2013_2014_1, Year2013_2014_2)

Year2013_20144<-Year2013_2014[!duplicated(Year2013_2014$names),]



#####  ##############
##   2011 - 2012
##########       ###################
link1 = "https://www.congress.gov/members?pageSort=party&pageSize=250&q=%7B%22chamber%22%3A%22House%22%2C%22congress%22%3A112%7D"
page1 = read_html(link1)

name = page1 %>% html_nodes("#main a") %>% html_text()
B<- data.frame(name)
names<-B[-c(501, 502, 503), ]  
names<- data.frame(names)

states = page1 %>% html_nodes(".result-item:nth-child(1) span") %>% html_text()
States<- data.frame(states)
party = page1 %>% html_nodes(".result-item:nth-child(3) span") %>% html_text()
Party<- data.frame(party)

Year2011_2012_1<- cbind(names, States, Party )

link2 = "https://www.congress.gov/members?pageSort=party&q=%7B%22chamber%22%3A%22House%22%2C%22congress%22%3A%22112%22%7D&pageSize=250&page=2"
page2 = read_html(link2)

name2 = page2 %>% html_nodes("#main a") %>% html_text()
B2<- data.frame(name2)
names<-B2[-c(403, 404, 405), ]  
names<- data.frame(names)

states<-page2 %>% html_nodes(".result-item:nth-child(1) span") %>% html_text()
States<- data.frame(states)
party = page2 %>% html_nodes(".result-item:nth-child(3) span") %>% html_text()
Party<- data.frame(party)


Year2011_2012_2<- cbind(names, States, Party)

Year2011_2012<-rbind(Year2011_2012_1, Year2011_2012_2)

Year2011_20122<-Year2011_2012[!duplicated(Year2011_2012$names),]





#####  ##############
##   2009 - 2010
##########       ###################
link1 = "https://www.congress.gov/members?pageSort=party&pageSize=250&q=%7B%22chamber%22%3A%22House%22%2C%22congress%22%3A111%7D"
page1 = read_html(link1)

name = page1 %>% html_nodes("#main a") %>% html_text()
B<- data.frame(name)
names<-B[-c(501, 502, 503), ]  
names<- data.frame(names)

states = page1 %>% html_nodes(".result-item:nth-child(1) span") %>% html_text()
States<- data.frame(states)
party = page1 %>% html_nodes(".result-item:nth-child(3) span") %>% html_text()
Party<- data.frame(party)

Year2009_2010_1<- cbind(names, States, Party )

link2 = "https://www.congress.gov/members?pageSort=party&q=%7B%22chamber%22%3A%22House%22%2C%22congress%22%3A%22111%22%7D&pageSize=250&page=2"
page2 = read_html(link2)

name2 = page2 %>% html_nodes("#main a") %>% html_text()
B2<- data.frame(name2)
names<-B2[-c(405, 406, 407), ]  
names<- data.frame(names)

states<-page2 %>% html_nodes(".result-item:nth-child(1) span") %>% html_text()
States<- data.frame(states)
party = page2 %>% html_nodes(".result-item:nth-child(3) span") %>% html_text()
Party<- data.frame(party)

Year2009_2010_2<- cbind(names, States, Party)

Year2009_2010<-rbind(Year2009_2010_1, Year2009_2010_2)

Year2009_20100<-Year2009_2010[!duplicated(Year2009_2010$names),]




#####  ##############
##   2007 - 2008
##########       ###################
link1 = "https://www.congress.gov/members?pageSort=party&pageSize=250&q=%7B%22chamber%22%3A%22House%22%2C%22congress%22%3A110%7D"
page1 = read_html(link1)

name = page1 %>% html_nodes("#main a") %>% html_text()
B<- data.frame(name)
names<-B[-c(501, 502, 503), ]  
names<- data.frame(names)

states = page1 %>% html_nodes(".result-item:nth-child(1) span") %>% html_text()
States<- data.frame(states)
party = page1 %>% html_nodes(".result-item:nth-child(3) span") %>% html_text()
Party<- data.frame(party)

Year2007_2008_1<- cbind(names, States, Party )

link2 = "https://www.congress.gov/members?pageSort=party&q=%7B%22chamber%22%3A%22House%22%2C%22congress%22%3A%22110%22%7D&pageSize=250&page=2"
page2 = read_html(link2)

name2 = page2 %>% html_nodes("#main a") %>% html_text()
B2<- data.frame(name2)
names<-B2[-c(407, 408, 409), ]  
names<- data.frame(names)

states<-page2 %>% html_nodes(".result-item:nth-child(1) span") %>% html_text()
States<- data.frame(states)
party = page2 %>% html_nodes(".result-item:nth-child(3) span") %>% html_text()
Party<- data.frame(party)

Year2007_2008_2<- cbind(names, States, Party)

Year2007_2008<-rbind(Year2007_2008_1, Year2007_2008_2)

Year2007_20088<-Year2007_2008[!duplicated(Year2007_2008$names),]



#####  ##############
##   2005 - 2006
##########       ###################
link1 = "https://www.congress.gov/members?pageSort=party&pageSize=250&q=%7B%22chamber%22%3A%22House%22%2C%22congress%22%3A109%7D"
page1 = read_html(link1)

name = page1 %>% html_nodes("#main a") %>% html_text()
B<- data.frame(name)
names<-B[-c(501, 502, 503), ]  
names<- data.frame(names)

states = page1 %>% html_nodes(".result-item:nth-child(1) span") %>% html_text()
States<- data.frame(states)
party = page1 %>% html_nodes(".result-item:nth-child(3) span") %>% html_text()
Party<- data.frame(party)

Year2005_2006_1<- cbind(names, States, Party )

link2 = "https://www.congress.gov/members?pageSort=party&q=%7B%22chamber%22%3A%22House%22%2C%22congress%22%3A%22109%22%7D&pageSize=250&page=2"
page2 = read_html(link2)

name2 = page2 %>% html_nodes("#main a") %>% html_text()
B2<- data.frame(name2)
names<-B2[-c(393, 394, 395), ]  
names<- data.frame(names)

states<-page2 %>% html_nodes(".result-item:nth-child(1) span") %>% html_text()
States<- data.frame(states)
party = page2 %>% html_nodes(".result-item:nth-child(3) span") %>% html_text()
Party<- data.frame(party)

Year2005_2006_2<- cbind(names, States, Party)

Year2005_2006<-rbind(Year2005_2006_1, Year2005_2006_2)

Year2005_20066<-Year2005_2006[!duplicated(Year2005_2006$names),]


write.csv(Year2005_2006, "~/Documents/Chapter 2- Dissertation/Congress/Year2005_2006.csv", row.names=FALSE)
write.csv(Year2007_2008, "~/Documents/Chapter 2- Dissertation/Congress/Year2007_2008.csv", row.names=FALSE)
write.csv(Year2009_2010, "~/Documents/Chapter 2- Dissertation/Congress/Year2009_2010.csv", row.names=FALSE)
write.csv(Year2011_2012, "~/Documents/Chapter 2- Dissertation/Congress/Year2011_2012.csv", row.names=FALSE)
write.csv(Year2013_2014, "~/Documents/Chapter 2- Dissertation/Congress/Year2013_2014.csv", row.names=FALSE)
write.csv(Year2015_2016, "~/Documents/Chapter 2- Dissertation/Congress/Year2015_2016.csv", row.names=FALSE)
write.csv(Year2017_2018, "~/Documents/Chapter 2- Dissertation/Congress/Year2017_2018.csv", row.names=FALSE)
write.csv(Year2019_2020, "~/Documents/Chapter 2- Dissertation/Congress/Year2019_2020.csv", row.names=FALSE)
write.csv(Year2021_2022, "~/Documents/Chapter 2- Dissertation/Congress/Year2021_2022.csv", row.names=FALSE)


















library(rvest)
library(dplyr)

link = "https://www.imdb.com/search/title/?title_type=feature&num_votes=25000,&genres=adventure&sort=user_rating,desc"
page = read_html(link)

name = page %>% html_nodes(".lister-item-header a") %>% html_text()
movie_links = page %>% html_nodes(".lister-item-header a") %>%
  html_attr("href") %>% paste("https://www.imdb.com", ., sep="")

movie_links = page %>% html_nodes(".lister-item-header a") %>%
  html_nodes(".lister-item-header a") %>% paste("https://www.imdb.com", ., sep="")

year = page %>% html_nodes(".text-muted.unbold") %>% html_text()
rating = page %>% html_nodes(".ratings-imdb-rating strong") %>% html_text()
synopsis = page %>% html_nodes(".ratings-bar+ .text-muted") %>% html_text()

get_cast <- function(movie_links) {
  movie_page <- read_html(movie_links)
  movie_cast <- movie_page %>% html_nodes(".primary_photo+ td a") %>%
    html_text() %>% paste(collapse = ",")
  return(movie_cast)
}

cast = sapply(movie_links, FUN = get_cast, USE.NAMES = FALSE)

movies = data.frame(name, year, rating, synopsis, cast, stringsAsFactors = FALSE)










rating = page %>% html_nodes(".ratings-imdb-rating strong") %>% html_text()
synopsis = page %>% html_nodes(".ratings-bar+ .text-muted") %>% html_text()

movies = data.frame(name, year, rating, synopsis, stringsAsFactors = FALSE)

write.csv(movies, "movies.csv")




A<-strsplit(name,"")

B<- data.frame(First=character(), Second=character())
P_T=data.frame(Property_Type=character())
for (i in 1:102)
{
  B[i,]<-A[[1]][1:2]
}
P_T<-paste(B$First,B$Second, sep="")




# Data Science Dojo Meetup: Automated Web Scraping in R

# Let's start scraping the main head and paragraph text/comments of a single Reddit page
#install.packages("rvest")
library(rvest)

reddit_wbpg <- read_html("https://www.congress.gov/members?pageSort=party&q=%7B%22congress%22%3A%5B%22117%22%5D%7D&pageSize=250&page=3/")

reddit_wbpg %>%
  html_node("title") %>%
  html_text()  

reddit_wbpg %>%
  html_nodes("span.result-heading") %>%
  html_text()

reddit_wbpg %>%
  html_node("ul.member-served") %>%
  html_text()

View(party)

# Let's scrape the time and URL of all latest pages published on Reddit's r/politics
reddit_political_news <- read_html("https://www.reddit.com/r/politics/new/")

time <- reddit_political_news %>%
  html_nodes("a._3jOxDPIQ0KaOWpzvSQo-1s") %>% 
  html_text()

time

urls <- reddit_political_news %>%
  html_nodes("a._3jOxDPIQ0KaOWpzvSQo-1s") %>%
  html_attr("href")

urls

# Create a dataframe containing the URLs of the Reddit news pages and their published times
reddit_newspgs_times <- data.frame(NewsPage=urls, PublishedTime=time)
#Check the dimensions 
dim(reddit_newspgs_times)

# Filter dataframe by rows that contain a time published in minutes (i.e. within the hour)
reddit_recent_data <- reddit_newspgs_times[grep("minute|now", reddit_newspgs_times$PublishedTime),]
#Check the dimensions (# items will be less if not all pages were published within mins)
dim(reddit_recent_data)

# Loop through urls, grab the main head and paragraph text of comments, 
# store in their own vectors, and create a dataframe to get it ready for analysis/modeling

titles <- c()
comments <- c()
for(i in reddit_recent_data$NewsPage){ 
  
  reddit_recent_data <- read_html(i)
  body <- reddit_recent_data %>%
    html_nodes("p.s90z9tc-10") %>%
    html_text()
  comments = append(comments, body)
  
  reddit_recent_data <- read_html(i)
  title <- reddit_recent_data %>%
    html_node("title") %>%
    html_text()
  titles = append(titles, rep(title,each=length(body)))
  
}

reddit_hourly_data <- data.frame(Headline=titles, Comments=comments)
dim(reddit_hourly_data)
head(reddit_hourly_data$Comments)

# Remove disclaimer comments included in all pages so this doesn't flood the comments and skew results
disclaimers <- c(
  "As a reminder, this subreddit is for civil discussion.",
  "In general, be courteous to others. Attack ideas, not users. Personal insults, shill or troll accusations, hate speech, any advocating or wishing death/physical harm, and other rule violations can result in a permanent ban.",
  "If you see comments in violation of our rules, please report them.",
  "I am a bot, and this action was performed automatically. Please contact the moderators of this subreddit if you have any questions or concerns."
)

reddit_hourly_data_no_disclaimers <- subset(
  reddit_hourly_data, !(Comments %in% c(disclaimers))
)

dim(reddit_hourly_data_no_disclaimers)
head(reddit_hourly_data_no_disclaimers$Comments)

# Score the overall sentiment of each comment
# This library scores sentiment by taking into account the whole sentence
# It takes into account surrounding words of a target word such as 'not happy'
# which cancels out positive sentiment
# A negative value means sentiment is more negative than positive
# A positive values means the sentiment is more positive than negative
#install.packages('sentimentr')
library(sentimentr)

# Comment out this line so it does not cause errors when scheduling to run the script
#sentiment(reddit_hourly_data_no_disclaimers$Comments)

# Treat comments as characters, not factors
# Convert to a format sentiment() function accepts
reddit_hourly_data_no_disclaimers$Comments <- as.character(reddit_hourly_data_no_disclaimers$Comments)

sentiment_scores <- sentiment(reddit_hourly_data_no_disclaimers$Comments)
head(sentiment_scores)

# Average the scores across all comments
average_sentiment_score <- sum(sentiment_scores$sentiment)/length(sentiment_scores$sentiment)
average_sentiment_score

# Email the results of the analysis
#install.packages("sendmailR")
library(sendmailR)
from <- "<rebecca.merrett@gmail.com>"
to <- "<rebecca.merrett@gmail.com>"
subject <- "Hourly Sentiment Score on Current US Political Situation"
body <- c("On a scale of 1 to -1 people feel: ", average_sentiment_score)            
mailControl <- list(smtpServer="ASPMX.L.GOOGLE.COM") #Use Google for Gmail accounts

sendmail(from=from,to=to,subject=subject,msg=body,control=mailControl)

# Schedule this script to run every hour to keep track of the overall sentiment 
# Idea to take this further: Instead of emailing the hourly results, 
# store the average sentiment score in a table every hour to plot it 
# over time or see how changes over time

