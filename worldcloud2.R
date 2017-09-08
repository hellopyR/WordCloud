clean_corpus <- function(corpus){
  corpus <- tm_map(corpus, content_transformer(replace_abbreviation))
  corpus <- tm_map(corpus, removePunctuation)
  corpus <- tm_map(corpus,stripWhitespace)
  corpus <- tm_map(corpus, removeNumbers)
  corpus <- tm_map(corpus,content_transformer(tolower))
  corpus <- tm_map(corpus, removeWords, c(stopwords("en"),"stayed","indian","www","get","https","want","like","one", "coffee","well","also","time","times","delhi","grand","location","nearby","stay","malls","office","airport","room","hotel"))
  return(corpus)
}


> review_source<-VectorSource(review_text)
> review_corpus<-VCorpus(review_source)
> head(review_corpus)