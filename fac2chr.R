

# 將data frame中�?�??�]factor轉�?�character ----------------------------------------


fac2chr <- function(df){
    # 迴�?��?�歷每個直�?
    for (c in 1:ncol(df)) {
      cat('column',c, '\n')
      # ?��?��該�?�class?��不是factor，�?��?�是，改??�character
      if (class(df[,c]) == 'factor'){
        df[,c]=as.character(df[,c])
      }
    }
    print('end')
    return(df)
}



