# Wine-Quality
This was the final project for the Machine Learning course.

This is a work in progress. The "First-version" folder consists of the project which was handed in for the class. The "Final-version" is the final version which I intend to reach; however, there is still much work to be done.

The *report* document is organized as follows: Section 1 presents the research question; in Section 2, the introduction, project aim, wine data sets, ML models, and variable selection approach is described; Section 3 contains a full detail of the ML techniques and analysis of the results; in Section 4 conclusion are made; finally, in Section 5 the references are given.

### Research Question
How precise can the quality of wine be predicted based on the following attributes: “fixed acidity”, “volatile acidity”, “citric acid”, “residual sugar”, “chlorides”, “free sulfur dioxide”, “total sulfur dioxide”, “density”, “pH”, “sulphates”, and “alcohol”?

### Introduction
The project aims to examine multiple machine learning models where the response is the quality of wine and the predictors are the mentioned variables. The goal is to find the best model for prediction and inference of the quality of wine. By doing so, certification entities, wine producers, and even consumers can benefit from such a model. For this aim, two data sets have been used:

• The first data set is the “red.csv” data set which consists of “red wines”.

• The second data set is the “white.csv” data set consisting of “white wines”.

These data sets were publicly donated on the 7th of October 2009 and are the two most common variants, white and red (rosé is also produced), from the demarcated Portuguese region of vinho verde. Both have 12 columns; namely, fixed acidity, volatile acidity, citric acid, residual sugar, chlorides, free sulfur dioxide, total sulfur dioxide, density, pH, sulphates, alcohol, quality. The red wine data set has 1599 observations, whereas the white wine data set has 4898 observations. In the proposal it is written that the data sets contain 1600 rows and 4899 rows respectively. This is because the first row of the data sets are the names of each column. The data were collected from May of 2004 to February of 2007 using only protected designation of origin samples that were tested at the official certification entity (CVRVV). Moreover, this wine accounts for 15% of the total Portuguese production during that time, making this data set large compared to other data sets prepared in this domain. Both data sets can be found on the following website: UCI (University of California, Irvine), Center for Machine Learning & Intelligent Systems

In brief, the task is creating a model to predict the quality of a wine based on the given attributes. In other words, the data sets can be viewed as classification and regression problems. The intention is to answer the following questions:

• *Feature selection:* Which attributes contribute the most to the quality of wine?
– Selection methods will be used to see whether all input variables are relevant to the quality of the wine. Seeing the predictors, particularly, fixed acidity, volatile acidity, and citric acid, they seem
to be correlated. Free sulfur dioxide and total sulfur dioxide seem to have a correlation as well. Likewise, we are not sure if all input variables are relevant. Therefore, it could be interesting to test feature selection methods.

• *Prediction:* Which machine learning model will give better prediction for the quality of wine? 

• *Inference:* Which model will given better intuition for predicting the quality of wine?

To answer these questions, several machine learning models will be applied on the two data sets separately and the results will be compared to each other. We will also see how the models differ for white wine and red wine; specifically, are there any attributes that is more influential for the quality of red wine which is not for white wine (or vice versa)?

The list below are the regression machine learning models applied on the data sets. 

• multiple linear regression & subset selection linear regression (best subset, forward step-wise, backward step-wise, sequential step-wise)

• regression decision trees & tree ensemble methods: bagging and random forests

In addition, classification techniques will be applied on the data sets. Note that the quality of wine in both data sets is a quantitative variable with integer values ranging from 0 (poor quality) to 10 (excellent quality). However, these values can be treated in two ways: 1 - as continuous values in a regression problem or 2 - as eleven classes for a classification problem. Moreover, in order to apply classification techniques one can apply a threshold and categorize the wines based on their quality value. Treating quality as an ordinal value, the following methods will be applied.

• logistic regression

• classification decision trees & tree ensemble methods: bagging and random forests. 

• support vector machines (SVM)

It is worth mentioning that wine certification is generally assessed by physicochemical and sensory tests. Determination of density, alcohol or pH values, are some of the Physicochemical laboratory tests used for wine certification. With regards to sensory tests, they rely mainly on human experts (in this case, the median of evaluations made by at least 3 wine experts was taken for the quality score). However, it should be emphasized that the weakest sense among the five prominent human senses is taste. For detailed information on the *background* and *data sets*, please read the *references* and *proposal*.

### References
1. P. Cortez, A. Cerdeira, F. Almeida, T. Matos and J. Reis. Modeling wine preferences by data mining from physicochemical properties. In Decision Support Systems, Elsevier, 47(4):547-553, 2009.

2. Kaggle: Your Machine Learning and Data Science Community. (n.d.).

3. UCI Machine Learning Repository: Wine Quality Data Set. (n.d.).

### Note
The descriptions are for the "First-version" folder, most of them hold true for the "Final-version" folder as well. When completed, I will update the readme.md for the "Final-version" folder. In brief, in the "Final-version" a comprehensive investigation will be done; a draft of the report can be found in the "Final-version" folder. 
