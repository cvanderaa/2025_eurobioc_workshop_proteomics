FROM bioconductor/bioconductor_docker:devel

WORKDIR /home/rstudio

COPY --chown=rstudio:rstudio . /home/rstudio/

RUN Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); BiocManager::install(ask=FALSE)"

RUN Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); BiocManager::install('cvanderaa/QFeatures', ref = 'uniquePrecId'); BiocManager::install('statOmics/msqrob2')"

RUN Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); devtools::install('.', dependencies=TRUE, build_vignettes=TRUE, repos = BiocManager::repositories())"

RUN Rscript -e "library('BiocFileCache');bfc <- BiocFileCache();psmFile <- bfcrpath(bfc, 'https://zenodo.org/records/14767905/files/mouse_psms.txt?download=1');annotFile <- bfcrpath(bfc, 'https://zenodo.org/records/14767905/files/mouse_annotations.csv?download=1')"
