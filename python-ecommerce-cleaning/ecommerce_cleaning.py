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

# Handle missing values/dups

#remove dups
df = df.drop_duplicates()

# check for missing values again
print("\nMissing values after dropping duplicates:")
print(df.isnull().sum())

# Fill missing product or customer_name with placeholder
df['Product'] = df['Product'].fillna('Unknown Product')
df['Customer_Name'] = df['Customer_Name'].fillna('Unknown Customer')

# Drop rows with missing critical info 
df = df.dropna(subset=['Quality', 'Price'])

# Fix invalid quantities

#Replace negative quantities with NaN
df.loc[df['Quantity'] < 0, 'Quantity'] = pd.NA

#Fill remaining missing Quantity values with 1 
df['Quantity'] = df['Quantity'].fillna(1)

#Convert Quantity to integer
df['Quantity'] = df['Quantity'].astype(int)

#Fix date formats

#Convert order_date and delivery_date to datetime
df['Order_Date'] = pd.to_datetime(df['Order_Date'], errors='coerce')
df['Delivery_Date'] = pd.to_datetime(df['Delivery_Date'], errors='coerce')

#Drop rows where Order_Date failed conversion
df = df.dropna(subset=['Order_Date'])

#Create a new colum: Delivery_Days
df['Delivery_Days'] = (df['Delivery_Date'] - df['Order_Date']).dt.days

#Clean text fields

#Standardize casing for strings
df['Product'] = df['Product'].str.title().str.strip()
df['Color'] = df['Color'].str.title().str.strip()
df['Order_Statues'] = df['Order_Status'].str.title().str.strip()
df['Payment_Method'] = df['Payment_Method'].str.title().str.strip()

#Replace 'Unknown' or empty spaces
df['State'] = df['State'].replace(['Uknown', ''], pd.NA)

#Recalculate totals

#Ensure numeric types
df['Price'] = pd.to_numeric(df['Price'], errors='coerce')
df['Total'] = pd.to_numeric(df['Total'], errors='coerce')
df['Shipping_Cost'] = pd.to_numeric(df['Shipping_Cost'], errors='coerce')

#Recalculate Total is mismatched
df['Total_Recalc'] = df['Quantity'] * df['Price']
df['Total_Diff'] = df['Total'] - df['Total_Recalc']

#Export cleaned data

#Save to new file
df.to_csv("ecommerce_data_cleaned.csv", index=False)

print("\n Data cleaning complete! Cleaned file saved as 'ecommerce_data_cleaned.csv'")
