
# msqrob2 workshop: robust modelling workflow for mass spectrometry-based proteomics

Authors:
    Christophe Vanderaa^[UGhent],
    Stijn Vandenbulcke^[UGhent],
    Laurent Gatto^[UCLouvain],
    Lieven Clement^[UGhent].
    <br/>
Last modified: \today.

## Overview

### Description

Mass spectrometry (MS) has become a method of choice for exploring the
proteome landscape that drives cellular functions. While technological
advancements have significantly increased the sensitivity of MS
instruments, obtaining reliable statistical results from these data
remains a challenging and often tedious task. Many researchers
continue to rely on ad-hoc analysis workflows due to a lack of clear
guidelines, which can lead to violations of key statistical
assumptions. In this workshop, we will offer a hands-on introduction
to the msqrob2 package that provides a set of rigorously validated and
benchmarked statistical workflows for MS-based proteomics. These
workflows are built on the QFeatures framework for data processing. We
will begin by familiarising participants with the input data format
and the QFeatures data structure. From there, we will walk through the
minimal data processing steps required prior to statistical modelling,
explaining when and why each step is necessary. Next, we’ll explore
the sources of variation inherent in proteomics data, highlighting
their hierarchical structure and demonstrating how linear mixed models
can properly account for these complexities. The modelling process
will be carried out using msqrob2, which offers additional advantages
such as robust and stabilised parameter estimation. Finally, we will
demonstrate how to translate biological questions into hypothesis
tests and how to prioritise proteomic markers that change in response
to a condition of interest. Depending on the progress of the group, we
will also briefly explore the emerging field of single-cell
proteomics, discussing the additional challenges posed by these data.
This workshop is designed for proteomics researchers who want to learn
how to analyse their data using reproducible and statistically sound
workflows, as well as for omics data analysts interested in expanding
their skill set to include proteomics.

### Pre-requisites

* Basic knowledge of R syntax
* Familiarity with the `SummarizedExperiment` class
* Familiarity with MS-based proteomics data analysis
* Familiarity with statistical analysis (t-tests, design of experiment)

If you don't have at least two out of four prerequisites, you are
still welcome to follow the workshop, but do not try to run the
analysis yourself during the lecture. You should rather focus on the
explanations.

Relevant background reading for the workshop:

* Vandenbulcke S, Vanderaa C, Crook O, Martens L, Clement L. 
  Msqrob2TMT: Robust linear mixed models for inferring differential
  abundant proteins in labeled experiments with arbitrarily complex
  design. Mol Cell Proteomics. 2025;24(7):101002.
  [Link to paper](https://doi.org/10.1016/j.mcpro.2025.101002);
  [Link to preprint](https://www.biorxiv.org/content/10.1101/2024.03.29.587218v1).
* The [`QFeatures` introduction vignette](https://rformassspectrometry.github.io/QFeatures/articles/QFeatures.html)
* Goeminne LJE, Gevaert K, Clement L. Peptide-level Robust Ridge 
  Regression Improves Estimation, Sensitivity, and Specificity in 
  Data-dependent Quantitative Label-free Shotgun Proteomics. Mol Cell
  Proteomics. 2016;15(2):657-668.
  [Link to paper](https://doi.org/10.1074/mcp.M115.055897);

### Participation

The workshop will introduce participants to important concepts 
regarding the statistical analysis of MS-based proteomics and how the
underlying modelling assumption relate to the experimental data
characteristics. The concepts will be embedded in a real-life
analysis, demonstrating the code to carry out each step from the input
data up to the biological interpretation. Participants can follow the
workshop by running along the analysis on their local computers, but
you are not requested to as the code will be live demonstrated. We did
not include exercise to allocate time for questions and interactivity
with the audience.

### _R_ / _Bioconductor_ packages used

- msqrob2
- BiocFileCache
- BiocParallel
- ggplot2
- patchwork
- dplyr
- scater
- ExploreModelMatrix

### Time outline

| Activity                       | Time |
|--------------------------------|------|
| Introduction and setup         | 10m  |
| The `QFeatures` data class     | 20m  |
| Data preprocessing             | 15m  |
| Break                          | 15m  |
| Modelling sources of variation | 20m  |
| Hypothesis testing             | 20m  |
| Wrap up                        |  5m  |

### Workshop goals and objectives

List "big picture" student-centered workshop goals and learning
objectives. Learning goals and objectives are related, but not the
same thing. These goals and objectives will help some people to decide
whether to attend the conference for training purposes, so please make
these as precise and accurate as possible.

### Learning goals

* Get an overview of the main challenges and artefacts in proteomics 
  data analysis, and how a well-justified data processing workflow can
  overcome these issues.
* Get a feeling on how the experimental design influences the main
  sources of variability, and hence the modelling strategy. 
* Understand why mixed models are ideally suited for proteomics data
  analysis, and understand the difference between fixed effects and
  random effects.

### Learning objectives

* Use `QFeatures` to manipulate and visualize proteomics data
* Use `msqrob2` to answer biological questions from processed data
* Learn how to translate these biological questions into model-related
  parameter combinations.
