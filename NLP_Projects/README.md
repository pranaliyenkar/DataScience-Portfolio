# Quora Question Pair Similarity

A Natural Language Processing (NLP) and Machine Learning project to predict whether two Quora questions are duplicates (i.e., semantically similar), based on a Kaggle dataset. 


##  Problem Statement
Quora has millions of questions posted by users. Many of these are duplicates or rephrasings of the same underlying question, creating redundancy.  
The business goal is to **detect question pairs that are duplicates**, so that Quora can:

- Reduce repeated answers  
- Improve the user experience for both askers and answerers  
- Surface canonical questions rather than cluttered, similar ones  

---

##  Data Overview

- The dataset comes from the **Kaggle Quora Question Pairs** competition. 
- Training data (`Train.csv`) includes:  
  - `qid1`: ID of the first question  
  - `qid2`: ID of the second question  
  - `question1`: Text of the first question  
  - `question2`: Text of the second question  
  - `is_duplicate`: Target flag (1 = duplicates, 0 = non-duplicates) :contentReference[oaicite:2]{index=2}  
- Row count: 404290  
---

##  Exploratory Data Analysis (EDA)

Some of the steps and key findings:

- **Class Imbalance**: Significant skew toward non-duplicate pairs. 
- **Unique Question Count**: In sample of 30000 ,19156 are unique questions; many appear only once.
- **Frequency Features**:  
  - How often each question (by `qid`) appears in the dataset (`freq_qid1`, `freq_qid2`)  
  - Length of each question (`q1len`, `q2len`)  
- **Text Overlap Features**:  
  - Number of shared normalized words between question pairs  
  - `word_share` = overlap normalized by total unique word count 
- **Visualization**:  
  - Bar plots,Violin, distribution plots to compare features for duplicate vs non-duplicate  
  - Word clouds for duplicate and non-duplicate question pairs
  ---

##  Data Preprocessing & Feature Engineering

1. **Preprocessing Text**  
   - Lowercasing  
   - Expanding contractions (e.g., “don’t” → “do not”)  
   - Removing HTML tags, punctuation  
   - Removing stop words  

2. **Extracted Features**  
   - Basic features: frequency (`freq_qid1`, `freq_qid2`), lengths  
   - Overlap features: common words, shared words ratio  
   - Advanced features: Word2Vec embeddings

---
##  Modeling

- **Model Types Explored**:  
  - Random Forest  
  - SVM  
  - XGBoost 

- **Evaluation Metric**:  
  - Accuracy Score
  - Confusion Matrix

- **Final Model**:  
  - The best performance was achieved with **XGBoost**, using both basic and advanced features +  Word2Vec. Final Accuracy: 79%  

---

## Results & Findings

- The XGBoost model gave best accuracy among the tested models.   
- Features capturing **semantic overlap** (like shared word sets, embeddings) were important to improve performance.  
- Even with good performance, there is room for improvement:
  - Use of **deep learning methods** (e.g., Siamese networks, Transformers) was suggested as future work. 
  - Trying different embedding or feature extraction techniques could further improve performance.

