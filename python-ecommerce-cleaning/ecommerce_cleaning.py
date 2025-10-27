import pandas as pd

# Load dataset 
df = pd.read_csv("ecommerce_data.csv")

#Preview data
print("Initial Data Preview:")
print(df.head())
print("\nDataset Info:")
print(df.info())
print("\nMissing Values:")
print(df.isnull().sum())

# TODO: Data cleaning steps will go below