import kagglehub
import pandas as pd

# Download of the dataset 'Sales Data' from Kaggle
path = kagglehub.dataset_download("jehanzaibbhatti/sales-data")
print(f'Path to files: {path}.')

# Convert the .csv file to a dataframe in pandas and after that, to a .xlsx file
df = pd.read_csv('data/raw_data.csv')
df.to_excel('data/raw_data.xlsx', index=False)