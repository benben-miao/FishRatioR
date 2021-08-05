#' Calculate Ln(Ratio) values
#'
#' Formula: Ln(Ratio) = Ln((N_species_in_genus) / (N_species_in_family))
#'
#' @param famgenspe The example data table.
#'
#' @return Ln(Ratio) values of every genus of family.
#' @export
#
#' @examples
#' data("famgenspe")
#' ln_ratio <- calc_ln_ratio(famgenspe = famgenspe)
#'
#' @author benben-miao
#'
calc_ln_ratio <- function(famgenspe = famgenspe){
  dt2 <- data.frame(matrix(NA,0,4))
  names(dt2) <- c(colnames(famgenspe)[1], colnames(famgenspe)[2], colnames(famgenspe)[3], 'LnRatio')

  fam_uni <- unique(sort(famgenspe[,1], decreasing = FALSE))

  for (fam in fam_uni){
    ndt <- famgenspe[grep(fam, famgenspe[,1]),]
    fam_spe_sum <- sum(ndt[,3])
    res <- vector()
    ln_res <- vector()
    mul_res <- vector()
    for (gen in ndt[,2]){
      gen_res <- ndt[grep(gen, ndt[,2]),3] / fam_spe_sum
      res <- c(res, gen_res)
      gen_ln_res = log(gen_res, base = exp(1))
      ln_res <- c(ln_res, gen_ln_res)
    }
    # print(ln_res)
    ndt$LnRatio <- ln_res
    # print(ndt)
    dt2 <- rbind(dt2, ndt)
  }

  return(dt2)
}
