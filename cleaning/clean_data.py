import pandas as pd

# loading data
df = pd.read_csv('../data/sales_data.csv')

# info
print(df.info())

# removing duplicates
df = df.drop_duplicates()

# handling missing values
df = df.dropna()

# converting date
df['Order Date'] = pd.to_datetime(df['Order Date'], dayfirst=True)

# creating new column 
df['Year'] = df['Order Date'].dt.year

# save cleaned data
df.to_csv('../data/cleaned_sales_data.csv', index=False)

# basic EDA
print("Total Revenue:", df['Sales'].sum())
print("Top Category:\n", df.groupby('Category')['Sales'].sum().sort_values(ascending=False))