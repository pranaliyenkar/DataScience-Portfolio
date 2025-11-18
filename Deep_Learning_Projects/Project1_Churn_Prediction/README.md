#  Credit Card Customer Churn Prediction (Deep Learning)

Predicting customer churn is essential for banks and financial institutions to retain customers and reduce revenue loss.  
This project builds an **Artificial Neural Network (ANN)** to predict whether a customer will **exit (churn)** using the **Churn_Modelling.csv** dataset from Kaggle.

---

##  Dataset

**File:** `Churn_Modelling.csv`  
**Source:** Kaggle  
**Rows:** 10,000  
**Target Column:** `Exited` (1 = Churned, 0 = Retained)

### **Key Features**

| Feature | Description |
|--------|-------------|
| CreditScore | Customer’s credit score |
| Geography | Country (France, Spain, Germany) |
| Gender | Male / Female |
| Age | Customer age |
| Tenure | Years with the bank |
| Balance | Bank account balance |
| NumOfProducts | Number of products used |
| HasCrCard | Has credit card (0/1) |
| IsActiveMember | Active membership (0/1) |
| EstimatedSalary | Estimated salary |
| Exited | Target variable |

---

## 🚀 Project Pipeline

### **1. Data Preprocessing**
- Loaded dataset and inspected structure  
- Encoded categorical variables (One-Hot Encoding & Label Encoding)  
- Scaled numerical features using **StandardScaler**  
- Split data into training & testing sets  

### **2. Model Architecture (ANN)**
- Input Layer (based on final feature count)  
- Hidden Layer 1: Dense + ReLU  
- Hidden Layer 2: Dense + ReLU  
- Output Layer: Sigmoid (binary classification)

### **3. Model Training**
- Optimizer: **Adam**  
- Loss Function: **Binary Crossentropy**  
- Metrics: **Accuracy**  
- Trained for multiple epochs with batch training  

### **4. Evaluation**
- Test Accuracy  
- Churn probability predictions  

---

##  Example Results  
> (Your results may vary depending on hyperparameters)

- **Accuracy:** ~86%  
- **ANN successfully identifies key churn-related features**  

---

##  Tech Stack

- Python  
- Pandas, NumPy  
- Matplotlib, Seaborn  
- Scikit-learn  
- TensorFlow / Keras  
- Jupyter Notebook  

---

## 📁 Project Structure

