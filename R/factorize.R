##' Factor variables in the dataset by name
##'
##' Factors given variable(s) of a dataset while providing an easy method for
##'     assigning the the updated dataset to a dataset name
##' @title Factorization method of given variables as string or list
##' @param x variable to be factorized as string
##' @param dataset dataset which you will be factoring from
##' @return an updated dataset with the new factorized variables
##' @author Kevin Duan
##' @export
##' @examples
##' # One covariate-------------------------------------------------------------
##' ghrelindat.new<-factorize("Hunger", dataset = ghrelindat)
##' # Note we set the output to a new variable
##' # We can also use integers to index columns
##' ghrelindat.new<-factorize(1, dataset = ghrelindat)
##'
##' # More than one covariate---------------------------------------------------
##' ghrelindat.new <- factorize(c("Hunger","Eatingcond"),dataset = ghrelindat)
##'

factorize <- function(x, dataset){
  if(length(x) == 1){
  dataset[[x]] <- as.factor(dataset[[x]])
  return(dataset)
  }else if(length(x) > 1 ){
    for(i in x){
      dataset[[i]] <- as.factor(dataset[[i]])
    }
    return(dataset)
}
}


