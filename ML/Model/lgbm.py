# Importing libraries
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
# lightgbm for classification
from numpy import mean
from numpy import std
#from sklearn.datasets import make_classification
from lightgbm import LGBMClassifier
from sklearn.model_selection import cross_val_score
from sklearn.model_selection import RepeatedStratifiedKFold
#from matplotlib import pyplot


path = '../Data'
train = pd.read_csv(path + "/train.csv")
test = pd.read_csv(path + "/test.csv")
# submission = pd.read_csv(path + "/sample_submission.csv")

print(train.head())

"""### Filling the null values in Number_Weeks_Used column"""

train['Number_Weeks_Used'] = train['Number_Weeks_Used'].fillna(
                            train.groupby('Pesticide_Use_Category')['Number_Weeks_Used'].transform('median'))
test['Number_Weeks_Used'] = test['Number_Weeks_Used'].fillna(
                            test.groupby('Pesticide_Use_Category')['Number_Weeks_Used'].transform('median'))

"""### Data Preprocessing"""

training_labels = train.iloc[:, -1]
X_train = train.iloc[:, 1:-1]
X_test = test.iloc[:, 1:]

data = pd.concat([X_train, X_test])

# data.head()

columns_names_encod = data.columns[[3, 7]]
data = pd.get_dummies(data, columns=columns_names_encod)

# data

"""### Splitting the data back"""

final_train = data[:train.shape[0]]
final_test = data[train.shape[0]:]

# final_train

"""### Creating cross validation set"""

training_labels.value_counts()

from sklearn.model_selection import train_test_split
X_training, X_cv, y_training, y_cv = train_test_split(final_train, training_labels, test_size =0.2, random_state=21)

"""## Training model on training dataset"""

# To check whether GPU is running or not
# import tensorflow as tf
# tf.test.gpu_device_name()


#X, y = make_classification(n_samples=1000, n_features=10, n_informative=5, n_redundant=5, random_state=1)

# evaluate the model
model = LGBMClassifier()
cv = RepeatedStratifiedKFold(n_splits=10, n_repeats=3, random_state=1)
n_scores = cross_val_score(model, X_training, y_training, scoring='accuracy', cv=cv, n_jobs=-1, error_score='raise')
print('Accuracy: %.3f (%.3f)' % (mean(n_scores), std(n_scores)))

# fit the model on the whole dataset
model = LGBMClassifier()
model.fit(X_training, y_training)

y_training_pred = model.predict(X_training)
y_cv_pred = model.predict(X_cv)

"""### Checking accuracy score for training dataset and cross validation set"""

from sklearn.metrics import accuracy_score
training_accuracy_score = accuracy_score(y_training, y_training_pred)
cv_accuracy_score = accuracy_score(y_cv, y_cv_pred)

print(training_accuracy_score)
print(cv_accuracy_score)

"""### Testing the model on test data"""

predictions_test = model.predict(final_test)
predictions_test = pd.Series(predictions_test)

# frame = {'ID': test.ID, 
#          'Crop_Damage': predictions_test}
# submission = pd.DataFrame(frame)
# submission.to_csv(path + '/lgbm_submission.csv', index=False)

# final_test

# predictions_test

import joblib

joblib.dump(model,'lgbm.ml')

