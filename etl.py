import pandas as pd
import math

# Extact
df = pd.read_csv('sample_products.csv')

# Transform
df['unit_price'] = df['unit_price'].apply(math.ceil)

# Load
df.to_csv('output/cleaned_products.csv', index=False)