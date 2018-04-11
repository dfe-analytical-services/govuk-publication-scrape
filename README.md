# Supply Index

## Backgroud 

This R project timeseries for the number of government publications.

Data is webscraped from https://www.gov.uk/government/publications and then manipulated in csv files in Python. 

## Output

The core output of this R project is the following:

- A RMarkdown report of all charts. 

The outputs can be found in the Outputs folder. To re-run the code simply run `run.R`.

## Methodology

## Opening the Project

To open the R Project double click the Supply Index Rproj file. 

This project uses [Packrat](https://rstudio.github.io/packrat/) for dependency management. When you first open the project Packrat will install all the required packages in the local folder using the same versions as used for development. This ensures that all of the functions used will work over time and is only done once. 

##Project structure

The folder structure is as follows:

- R
- Python
- Data
- Outputs
- packrat

### Python

This folder contains all of the Python scripts that make up the project. 

The core structure is as follows:

1. Script that webscraped data from the website
2. Script that does the data wrangling to produce csv file with timeseries

### Data

This folder contains local copies of the data stored in csv and json format. 

- **govuk_publications.json, govuk_publications1.json, govuk_publications2.json, govuk_publications3.json** - Webscraped data
- **all_publications.csv, all_publicationsMonth.csv** - Timeseries by week and month for all government publications
- **dfe_publications.csv, dfe_publicationsMonth.csv** - Timeseries by week and month for DfE publications 

### Outputs

This folder contains all of the outputs of the analysis. Currently this is a html containing the charts. By default the Outputs folder is empty. To populate it run the main.R script. 

### Packrat

Packrat is for dependency management to ensure that all package versions used are the same as those at the time the project was created.


- **test_supply_index.R** - This test compares runs the R project on the data that would've been used for the 2015 model and compares to the output from last years supply index. The output is a png in the tests/outputs folder. Due to the changes in methodology these do not show equality between the different years but have been agreed that the differences are feasible with changes in methodology. 


## Notes on Updating

Note that if you need to update this analysis you should webscrape the data from the website in Sherlock (you need an account), then run the Python script to wrangle data then run the RMarkdown and run.R file for output to be saved in Outputs folder. 


