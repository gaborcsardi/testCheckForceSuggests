
####
#############################################################################
#' Example function.
#'
#' This function will not work but illustrates the use of gurobi and rglpk
#'
#'@param x First input
#'@param y Second input
#'
#'@return Solver output

#'@export
addThings <- function(x, y){
  x + y
}


####
#############################################################################
#' Example solver function.
#'
#' This function will not work but illustrates the use of gurobi and rglpk
#'
#'@param x Solver input
#'
#'@return Solver output

#'@export
useSolver <- function(x){
  if(requireNamespace(gurobi)) {
    return(gurobi::gurobi(x))
  } else {
    Rglpk::Rglpk_solve_LP(x)
  }
}
