## Large-Scale Administrative Data Reveal Black-White Mortality Crossover is Not a Data Artifact

[![OSF](https://img.shields.io/badge/OSF-project-blue)]([https://osf.io/5e8wf/](https://osf.io/wcgfm/overview?view_only=d60dbcbb7b52490f808af829be1685d5))
[![Generic badge](https://img.shields.io/badge/R-4.5.1-orange.svg)](https://cran.r-project.org/bin/macosx/)
[![Generic badge](https://img.shields.io/badge/License-GNU-<green>.svg)](https://www.gnu.org/licenses/gpl-3.0.en.html)
[![Generic badge](https://img.shields.io/badge/Maintained-Yes-red.svg)]()


This repository contains code and materials to replicate the paper "Large-Scale Administrative Data Reveal Black-White Mortality Crossover is Not a Data Artifact."


**Abstract**: First documented in 1930, the Black–White mortality crossover remains one of the most enduring demographic puzzles. Black Americans experience higher age-specific mortality rates than White Americans throughout most of the life course, yet this pattern reverses at advanced ages. A leading explanation for the Black-White mortality crossover is that there is no crossover at all. Rather, differential age-misreporting or exaggeration, uncounted or unmatched deaths, and other inaccuracies create a spurious crossover. We use a large-scale administrative cohort dataset of American men (N = 2.3 million deaths) to document the Black-White mortality crossover. We find a mortality crossover for birth cohorts of 1890--1905 at age 86. The quality of our mortality data, paired with a series of sensitivity analyses, provides new evidence that the observed crossovers are not an artifact of age misreports or exaggerations. We conclude that the Black–White mortality crossover is a real demographic phenomenon and emphasize the need for further empirical investigation into the potential selection mechanisms and shifts in the causes of death processes underlying it. 


### Replication Package

------------


This repository includes code to replicate all figures and tables in the paper. To replicate, follow the steps outlined below: 

1. Clone this repository
2. Download the `data.zip` file from the [OSF repository](https://osf.io/wcgfm/overview?view_only=d60dbcbb7b52490f808af829be1685d5), move it to the root level of this repository, and unzip it. 
2. Run the `00_run_all.Rmd` script, which will run all code (or run scripts `01` to `21` individually)

### Data 

------------


Please download the `data.zip` file from the Open Science Framework repository. At the root level of this repository (alongside the `code/` folder), unzip 
the archive to create a `data/` folder containing all required data files for the analysis.

### Code 

------------


After downloading the required data, researchers can run the following script to replicate all figures and tables in the paper: 
  
- `00_run_all.Rmd` - this file runs all scripts. 

Alternatively, researchers can run the following files individually in order: 
  
- `00_run_all.Rmd` – Master script to run the full analysis pipeline in sequence.
- `01_create_analysis_file.Rmd` – Create cleaned analysis file.
- `02_bw_crossover_uncertainty.Rmd` – Calculate age-specific mortality rates with uncertainty and visualize Black-White mortality crossovers.
- `04_age_heaping.Rmd` – Assess an visualize age-heaping. 

### Authors

- [Casey Breen](https://caseybreen.com)


## Replication

All analyses and computations were carried out on 2024 MacBook Pro with an Apple M4 Pro chip, 48GB memory, and Sequoia 15.7 operating system.

All analyses were originally conducted using R version 4.5.1 and the package versions recorded in the attached session info at the bottom of the README. 
```

## Acknowledgements 

For helpful feedback and background information, the author would like to thank Dennis M. Feehan, Jason M. Fletcher, Joshua R. Goldstein, Michelle Niemann, Christopher Muller, Elizabeth Wrigley-Field, and audiences at the Mortal Conference (Oxford, 2024), the British Society for Population Studies Conference “Health and Mortality” session (Bath, 2024), the IPUMS Data Intensive Research Conference (virtual, 2021), the Social Science and History Association (Toronto, 2024), the CenSoc Users Conference (Berkeley, 2024), the London School of Economics Historical Economic Demography Workshop (London, 2025), and seminars at the University of Washington Department of Sociology (Seattle, 2024), the University of Texas at Austin Department of Sociology (Austin, 2024), Lund University Department of Economic History (Lund, 2024), and the Max Planck Institute for Demographic Research (Rostock, 2025). Research reported in this publication was supported by the National Institute of Aging R01AG05894. C.F.B. was supported by National Institute of Aging T32-AG000246.


## Session info:

```
> sessionInfo()
R version 4.5.1 (2025-06-13)
Platform: aarch64-apple-darwin20
Running under: macOS Sequoia 15.7.2

Matrix products: default
BLAS:   /System/Library/Frameworks/Accelerate.framework/Versions/A/Frameworks/vecLib.framework/Versions/A/libBLAS.dylib 
LAPACK: /Library/Frameworks/R.framework/Versions/4.5-arm64/Resources/lib/libRlapack.dylib;  LAPACK version 3.12.1

locale:
[1] en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/en_US.UTF-8

time zone: America/Chicago
tzcode source: internal

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
 [1] scales_1.4.0        gompertztrunc_0.1.2 ipumsr_0.9.0        RColorBrewer_1.1-3  LexisPlotR_0.4.0    gt_1.1.0            fixest_0.12.1      
 [8] broom_1.0.9         cowplot_1.2.0       ggrepel_0.9.6       lubridate_1.9.4     forcats_1.0.0       stringr_1.5.1       dplyr_1.1.4        
[15] purrr_1.1.0         readr_2.1.5         tidyr_1.3.1         tibble_3.3.0        ggplot2_3.5.2       tidyverse_2.0.0     data.table_1.17.8  
[22] here_1.0.1         

loaded via a namespace (and not attached):
 [1] gtable_0.3.6        xfun_0.53           lattice_0.22-7      tzdb_0.5.0          numDeriv_2016.8-1.1 vctrs_0.6.5         tools_4.5.1        
 [8] generics_0.1.4      sandwich_3.1-1      pacman_0.5.1        pkgconfig_2.0.3     stringmagic_1.2.0   lifecycle_1.0.4     compiler_4.5.1     
[15] farver_2.1.2        textshaping_1.0.3   ggsci_3.2.0         codetools_0.2-20    htmltools_0.5.8.1   Formula_1.2-5       pillar_1.11.0      
[22] crayon_1.5.3        nlme_3.1-168        tidyselect_1.2.1    digest_0.6.37       stringi_1.8.7       labeling_0.4.3      rprojroot_2.1.1    
[29] fastmap_1.2.0       grid_4.5.1          cli_3.6.5           magrittr_2.0.3      withr_3.0.2         dreamerr_1.5.0      backports_1.5.0    
[36] timechange_0.3.0    ragg_1.5.0          zoo_1.8-14          hms_1.1.3           evaluate_1.0.5      knitr_1.50          haven_2.5.5        
[43] rlang_1.1.6         Rcpp_1.1.0          zeallot_0.2.0       glue_1.8.0          xml2_1.4.0          rstudioapi_0.17.1   R6_2.6.1           
[50] systemfonts_1.2.3   fs_1.6.6
```
