
# "Enhancing E-commerce Efficiency with Machine Learning"
## Project 4 - TeamNeural Net Ninjas
---

![Shipments](Ship_img.jpg)

- Overview: This project uses supply chain data from the company DataCo Global. This DataFrame represents data related to orders, including payment information, shipping details, and product information. It has a total of 53 columns and 180,519 rows of data. We hope to take a deeper look into the product categories and the logistics of the delivery process.
    - Data Type - Structured Data:
        - This dataset is available in the form of a CSV file named "DataCoSupplyChainDataset.csv." 
    - Areas of Registered Activities:
        - The dataset covers various areas of supply chain activities, including Customer and Order Info, Sales, Delivery and Commercial Distribution. This broad coverage allows for a comprehensive analysis of supply chain processes and performance.
    - Products:
        - The dataset includes information about different types of products, such as Clothing, Sports, and Electronic Supplies. This diversity in product categories could be valuable for studying how different product types interact within the supply chain.
    - Payment Types:
        - The dataset also includes information about the different payment methods used - Debit, Transfer, Payment, Cash.
    - Geographical Scope:
        - The file includes data for customers based in the contiguous United States and Puerto Rico, for orders shipped out to 164 different counries across the globe.
    - Time:
        - The dataset was released in 2019 and has not been updated since.


- Method: This project used machine learning models to predict outcomes for different components:
    - Sales Prediction Model - 
    - Late Delivery Risk Model -
        - Using a RandomForestClassifier to predict the risk of late deliveries based on the input features from the dataset. After training the model and making predictions on a test set, it evaluates the model's performance and visualizes the results using a confusion matrix and a classification report. 
    - Fraudulent Order Model - 


- Results:
    - Sales Prediction Model - Multiple Linear Regression R-sq: 0.94 MSE: 741.46 & MAE: 575.72
    - Late Delivery Risk Model -
      
        - True Negatives (TN): Model correctly predicts a delivery as 'Not Late'. 
        - False Positives (FP): Predicted as 'Late', but are actually 'Not Late'. 
        - False Negatives (FN): Predicted as 'Not Late', but are actually 'Late'. 
        - True Positives (TP): Model correctly predicts a delivery as 'Late'.     
      
        | Quartile| Results|
        |---------------------|----------------------------------------------------|
        | TN:| n= 15027 (41.62%) |
        | FP:| n= 1280 (3.55%)   |
        | FN:| n= 3932 (10.89%)  |
        | TP:| n= 15865 (43.94%) |

        ![Late Delivery Risk model report](latedelivery_report.jpg)

      
    - Fraudulent Order Model - ![image](https://github.com/jdmandras/Project-4/assets/128310249/2d13c0a2-e7d3-4fdf-8134-d16aea680078)


- Data Source: https://www.kaggle.com/datasets/shashwatwork/dataco-smart-supply-chain-for-big-data-analysis
For more info, visit: https://data.mendeley.com/datasets/8gx2fvg2k6/5
