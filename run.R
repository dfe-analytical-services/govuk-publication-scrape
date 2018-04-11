# Create the Output documents

rm(list = ls())

rmarkdown::render('report.Rmd', output_file = 'report.html', output_dir = 'Outputs')

rm(list = ls())