
> review_tdm<-TermDocumentMatrix(clean_corp)
> library(tm)
> library(qdp)
> library(qdap)
> review_tdm<-TermDocumentMatrix(clean_corp)
> review_m<- as.matrix(review_tdm)
> term_frequency<-rowSums(review_m)
> term_frequency<-sort(term_frequency,decreasing=TRUE)
> word_freqs<-data.frame(term=names(term_frequency),num=term_frequency)

> wordcloud(word_freqs$term,word_freqs$num,max.words=40,colors="red")
Warning messages:
1: In wordcloud(word_freqs$term, word_freqs$num, max.words = 40, colors = "red") :
  good could not be fit on page. It will not be plotted.
2: In wordcloud(word_freqs$term, word_freqs$num, max.words = 40, colors = "red") :
  tripadvisorinshowuserreviewsgdrthegrandnewdelhinewdelhinationalcapitalterritoryofdelhihtml could not be fit on page. It will not be plotted.
> 