import pandas as pd

def get_quantiles(filename):
    df = pd.read_csv(filename, delimiter='\t', error_bad_lines=False)
    df = df[['customer_id', 'product_id', 'star_rating', 'product_title']]
    customers = df['customer_id'].value_counts()
    products = df['product_id'].value_counts()

    quantiles = [0, 0.01, 0.02, 0.03, 0.04, 0.05, 0.1, 0.25, 0.5, 0.75, 0.9, 0.95, 0.96, 0.97, 0.98, 0.99, 1]

    return customers.quantile(quantiles), products.quantile(quantiles)