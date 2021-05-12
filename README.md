# Churn Predition - Sparkify Project 
A PySpark project that build a classification model to predict user churn 
analysing user activities on a music streaming app called Sparkify.

More Project details can be found in this blog post[here] (https://medium.com/@flavio.fukabori/churn-prediction-with-pyspark-b95080e78d5):

### Table of Contents

1. [Installation](#installation)
2. [Project Motivation](#motivation)
3. [File Descriptions](#files)
5. [Licensing, Authors, and Acknowledgements](#licensing)

## Installation <a name="installation"></a>

1. The project can be run in any environment that suport PySpark version 2.4.3 or later.

   Code has run sucessfully on Udacity workspace (localmode).
   Code has run sucessfully on AWS EMR Cluster (EMR 5.25.0, spark 2.4.3), with one 1 master node and 2 workers. m5.xlarge.

## Project Motivation<a name="motivation"></a>

The main goal of this project is to build a end-to-end PySpark ML pipeline
following the steps below:

1. Load data to SparkSession
2. Clean and Preprocess Data
3. Exploratory Data Analysis - EDA
4. Feature Selection
5. Model building and optimization
6. Model evalution

**Technical details*:
The project mainly uses Spark Dataframe API and Spark ML. 
Some techniques applied includes UDF functions, Window Function, Aggregation, Pipeline, CrossValidator, ParamGridBuilder

## File Descriptions <a name="files"></a>

**notebook** 

**Sparkify.ipynb:** File used to run the sample dataset on Udacity environment.
**Sparkify-EMR-AWS:** File used to run the full dataset on AWS EMR Cluster.

To access full fataset in S3: "s3n://udacity-dsnd/sparkify/sparkify_event_data.json"

## Licensing, Authors, Acknowledgements<a name="licensing"></a>

Must give credit to Udacity for the Sparkify dataset that is provided
on Udacity's Data Science Nanodegree.

Otherwise, feel free to use the code here as you would like! 