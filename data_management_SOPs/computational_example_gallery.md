# GERMS Computational Example Gallery

This is a list of analyses, visualizations, data curation, and other computational things that GERMS members have done. Each example has a short description as well as lists of keywords that describe its content. The purpose of this page is to be an easily searchable resource for people to consult when they want to apply these computational techniques to their own research.

- [Phylosmith](https://schuyler-smith.github.io/phylosmith/)
	- Description: [Schuyler](https://github.com/schuyler-smith) developed this R package that leverages [phyloseq](https://joey711.github.io/phyloseq/) objects to simplify common analyses done on microbial data. Read the [paper](https://joss.theoj.org/papers/10.21105/joss.01442) for more information, or consult the various vignettes for in-depth tutorials. 
	- languages: *R (phyloseq, ggplot)
	- visualizations: *abundance heatmaps, phylogeny profiles, taxa abundance bar charts, networks, more...*
	- analyses/models: *core microbiome, network significance cutoffs*
	- data prep: *taxa filtering, unique taxa, conglomerate taxa/samples, relative abundance, merge treatments, melt phyloseq, more...*

- [Crop Priming: Analysis so Far](https://pommevilla.github.io/crop_priming/analysis_so_far.html)
	- Description: 
	- langauges: *R (Quarto, RMarkdown)*
	- visualizations: *heatmaps, phylogenetic tree, NMDS, envfit, biodiversity (alpha, beta), bar/box plots (with error bars/significance), compositional barchart (normalized and raw counts), line chart with vertical thresholds + inlaid legend*
	- analyses/models: *ANOVA (on all combinations of variables), ANOSIM, ADONIS, Kruskal-Wallis, betadisper, modifying group membership of based on NMDS scores*
	- data prep: *phyloseq, pivot_wider, pivot_longer, envfit, vegdist, summarize, joins*

- [GERMS-ML](https://github.com/pommevilla/germs.ml)
	- Description: A weekly machine learning reading group we used to have where we talked about machine learning theory and practiced implementing algorithms in Python.
	- languages: *Python (Jupyter Notebooks, SciKit-Learn, Keras, numpy, pandas, matplotlib), LaTeX (Beamer)*
	- visualizations: *confusion matrix, mnist digits, fashion-mnist*
	- analyses/models: *neural networks, convolutional neural networks, random forests*
	- data prep: *keras pipelines, sci-kit learn piplines, numpy, hyperparameter tuning, training/test split, normalizing/scaling data, sentiment analysis, word embeddings, bias-variance tradeoff*
	- theory: *neural networks (from a linear algebra pov), activation functions, gradient descent*

- [Plotting Maps with ggplot2](https://pommevilla.github.io/lunchinatoR/11202020#1)
	- Description: A short presentation on how to use `sf` objects to plot maps with `ggplot2`. This presentation was made using [Xaringan](https://github.com/yihui/xaringan), an R package that turns RMarkdown documents into slides. See [the RMarkdown file](https://github.com/pommevilla/lunchinatoR/blob/master/11202020.Rmd) to see how this presentation was made
	- langauges: *R (RMarkdown, Xaringan)*
	- visualizations: *maps, animations (`gganimate`), slides (Xaringan)*
	- analyses/models: *summarizing year-over-year change, joins*
	- data prep: *pandas, working with sf objects, pivoting, filtering, filtering sf objects, layering sf objects*

- [Various P3 Bootcamps](https://github.com/pommevilla/p3.bootcamp.da2.2019)
	- Description: [Paul](https://github.com/pommevilla) gave several introductory data science classes for the P3 programs.
	- Basic Courses: [R](https://pommevilla.github.io/p3.bootcamp.r.2019/), [Python](https://github.com/pommevilla/p3.bootcamp.python.2019), [Shell](https://github.com/skDooley/shell_tutorial)
	- Less basic courses: [Intro to ggplot2](https://pommevilla.github.io/p3.bootcamp.da1.2019/lesson_2.html), [iGraph basics](https://pommevilla.github.io/p3.bootcamp.da2.2019/lesson_1.html)
	- Intermediate: [Analysis of the Saccharomyces PPI Network](https://pommevilla.github.io/p3.bootcamp.da2.2019/lesson_2.html)
		- analyses/models: *PPI, network analysis, bootstrapping, permutation testing, PCA*
		- visualizations: *heatmap, network, histograms*

- [Learning Shiny (+ practicing some tidymodels)](https://pommevilla.netlify.app/blog/20210823_learning_shiny/)
	- Description: This blog post shows how to integrate an `xgboost` model created by `tidymodels` into a Shiny dashboard. You can see the application in action [here](https://pommevilla.shinyapps.io/shiny_penguins/), and see the code that created the dashboard [here](https://github.com/pommevilla/shiny_penguins/blob/main/R/app.R).
	- languages: *R (Shiny, tidymodels, Rmarkdown)*
	- visualizations: *NMDS, confusion matrix, boxplots*
	- analyses/models: *xgboost, hyperparameter tuning*
	- data prep: *imputation (knn, median), normalization, dummy variables*



