# Churn Predition - Sparkify Project 
A PySpark project that build a classification model to predict user churn 
analysing user activities on a music streaming app called Sparkify.

More Project details can be found in this blog post[here] (https://flavio-fukabori.medium.com/churn-prediction-with-pyspark-b95080e78d5):

### Table of Contents

1. [Installation](#installation)
2. [Project Motivation](#motivation)
3. [File Descriptions](#files)
4. [Licensing, Authors, and Acknowledgements](#licensing)

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

To access full dataset in S3: "s3n://udacity-dsnd/sparkify/sparkify_event_data.json"


## Results on small dataset:
F1-Score on (cross-validation, test-set):

- LogisticRegression = (0.863, 0.900)
- RandomForest = (0.820, 0.942)
- LinearSVC = (0.668, 0.852)

RandomForest had the best performance on the small dataset, with F1-score = 0.942 on test-set. However, there was a high variance on metrics when cross-validation and test-set were compared.

I suspected that the high variance was due to the small sample size on small dataset. To confirm that hypothesis, the same code was run on the full dataset at AWS EMR cluster

## Results on full dataset, run on Amazon EMR Cluster:
The 3 models were run on the full dataset at Amazon EMR Cluster as well:

F1-Score on (cross-validation, test-set)

- LogisticRegression = (0.805, 0.799)
- RandomForest = (0.879, 0.872)
- LinearSVC = (0.688, 0.679)

As expected, the variance between cross-validation and test-set score on the full dataset is almost zero. This confirm the hypothesis of high variance on the small data set is due to sample size.

Based on the results above, I suggest to select RandomForest to deploy in production, as it has presented the best performance on the full dataset and has presented the lowest difference between the results on small and full dataset.

If computation costs or model explicability is a constraint, I would pick LogisticRegression to deploy in production.

## Future works

Before a deployment in production, we could work on the followings steps:

Run a new training increasing the quantity of hyperparameters and numFolds
Run a new training with different algorithm, like boosting
Analyse precision vs recall metrics and optmize the threshold based on the business goals. Prioritize precision if the cost of false positive is high, or prioritize recall if the cost of false negative is high.

## Licensing, Authors, Acknowledgements<a name="licensing"></a>

Must give credit to Udacity for the Sparkify dataset that is provided
on Udacity's Data Science Nanodegree.

Otherwise, feel free to use the code here as you would like! 