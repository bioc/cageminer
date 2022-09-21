
<!-- README.md is generated from README.Rmd. Please edit that file -->

# cageminer <img src='man/figures/logo.png' align="right" height="139" />

<!-- badges: start -->

[![GitHub
issues](https://img.shields.io/github/issues/almeidasilvaf/cageminer)](https://github.com/almeidasilvaf/cageminer/issues)
[![Lifecycle:
stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://lifecycle.r-lib.org/articles/stages.html#stable)
[![R-CMD-check-bioc](https://github.com/almeidasilvaf/cageminer/workflows/R-CMD-check-bioc/badge.svg)](https://github.com/almeidasilvaf/cageminer/actions)
[![Codecov test
coverage](https://codecov.io/gh/almeidasilvaf/cageminer/branch/master/graph/badge.svg)](https://codecov.io/gh/almeidasilvaf/cageminer?branch=master)
<!-- badges: end -->

The goal of `cageminer` is to integrate SNP data from GWAS results with
gene coexpression networks to identify high-confidence candidate genes
involved in a particular phenotype. To identify high-confidence
candidate genes, `cageminer` considers 3 criteria:

1.  Physical proximity (or linkage disequilibrium with) trait-related
    SNPs;
2.  Presence in coexpression modules enriched in guide genes (i.e.,
    “reference” genes that are known to be associated with the
    phenotype).
3.  Significant altered expression levels in a condition of interest
    (e.g., stress, disease, etc).

By default, `cageminer` defines genes as high-confidence candidates if
they satisfy all of the 3 criteria above, but users can choose to use
only one/some of them.

## Installation instructions

Get the latest stable `R` release from
[CRAN](http://cran.r-project.org/). Then install `cageminer` from
[Bioconductor](http://bioconductor.org/) using the following code:

``` r
if (!requireNamespace("BiocManager", quietly = TRUE)) {
    install.packages("BiocManager")
}

BiocManager::install("cageminer")
```

And the development version from
[GitHub](https://github.com/almeidasilvaf/cageminer) with:

``` r
BiocManager::install("almeidasilvaf/cageminer")
```

## Citation

Below is the citation output from using `citation('BioNERO')` in R.
Please run this yourself to check for any updates on how to cite
**BioNERO**.

``` r
print(citation('BioNERO'), bibtex = TRUE)
#> 
#> To cite BioNERO in publications use:
#> 
#>   Almeida-Silva, F., Venancio, T.M. BioNERO: an all-in-one
#>   R/Bioconductor package for comprehensive and easy biological network
#>   reconstruction. Funct Integr Genomics 22, 131-136 (2022).
#>   https://doi.org/10.1007/s10142-021-00821-9
#> 
#> A BibTeX entry for LaTeX users is
#> 
#>   @Article{,
#>     title = {BioNERO: an all-in-one R/Bioconductor package for comprehensive and easy biological network reconstruction},
#>     author = {Fabricio Almeida-Silva and Thiago M. Venancio},
#>     journal = {Functional And Integrative Genomics},
#>     year = {2022},
#>     volume = {22},
#>     number = {1},
#>     pages = {131-136},
#>     url = {https://link.springer.com/article/10.1007/s10142-021-00821-9},
#>     doi = {10.1007/s10142-021-00821-9},
#>   }
```

## Code of Conduct

Please note that the `cageminer` project is released with a [Contributor
Code of Conduct](http://bioconductor.org/about/code-of-conduct/). By
contributing to this project, you agree to abide by its terms.

## Development tools

-   Continuous code testing is possible thanks to [GitHub
    actions](https://www.tidyverse.org/blog/2020/04/usethis-1-6-0/)
    through *[usethis](https://CRAN.R-project.org/package=usethis)*,
    *[remotes](https://CRAN.R-project.org/package=remotes)*, and
    *[rcmdcheck](https://CRAN.R-project.org/package=rcmdcheck)*
    customized to use [Bioconductor’s docker
    containers](https://www.bioconductor.org/help/docker/) and
    *[BiocCheck](https://bioconductor.org/packages/3.15/BiocCheck)*.
-   Code coverage assessment is possible thanks to
    [codecov](https://codecov.io/gh) and
    *[covr](https://CRAN.R-project.org/package=covr)*.
-   The [documentation
    website](http://almeidasilvaf.github.io/cageminer) is automatically
    updated thanks to
    *[pkgdown](https://CRAN.R-project.org/package=pkgdown)*.
-   The code is styled automatically thanks to
    *[styler](https://CRAN.R-project.org/package=styler)*.
-   The documentation is formatted thanks to
    *[devtools](https://CRAN.R-project.org/package=devtools)* and
    *[roxygen2](https://CRAN.R-project.org/package=roxygen2)*.

For more details, check the `dev` directory.

This package was developed using
*[biocthis](https://bioconductor.org/packages/3.15/biocthis)*.
