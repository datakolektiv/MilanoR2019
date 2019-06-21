### ----------------------------------------------------------
### --- project: LDA w. Meta-Features from Wikidata
### --- script: 00_newsrivr.R
### --- author(s): Goran S. Milovanović & Mike Page
### --- description:
### --- Retrieves and cleans news using {newsrivr}
### ----------------------------------------------------------


### --- setup

## - libraries
library(newsrivr)

## - directories
dataDir <- 'data/'

### ----------------------------------------------------------
### --- Store newsrivr credentials
### ----------------------------------------------------------

# - newsrivr::store_creds() prompts the user for their api_key
# - and user agent. newsrivr::store_creds_temp() allows the
# - user to store credentials for only that session if they
# - do not want to edit their .Renviron file.
store_creds()

### ----------------------------------------------------------
### --- Get news, clean news, and save to disk
### ----------------------------------------------------------

# - write function that retrievs and cleans news and then saves
# - to disk
save_news <- function(query){
  news <- get_news(query = query)
  news <- clean_news(news) 
  saveRDS(news, paste0(dataDir, tolower(query), ".rds"))
}
 
# - Iterate save_news() over list of companies
save_news("Google")
save_news("Facebook")
save_news("Microsoft")
save_news("Twitter")
save_news("Apple")

















