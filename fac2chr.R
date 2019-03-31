

# å°‡data frameä¸­æ?€??‰]factorè½‰æ?character ----------------------------------------


fac2chr <- function(df){
    # è¿´å?ˆé?æ­·æ¯å€‹ç›´è¡?
    for (c in 1:ncol(df)) {
      cat('column',c, '\n')
      # ?ˆ¤?–·è©²è?Œclass?˜¯ä¸æ˜¯factorï¼Œå?‚æ?œæ˜¯ï¼Œæ”¹??character
      if (class(df[,c]) == 'factor'){
        df[,c]=as.character(df[,c])
      }
    }
    print('end')
    return(df)
}



