import csv
import random
import os
from datetime import datetime, timedelta

from config.settings import DATASET_DIR
from utils.logger import get_logger

logger = get_logger("OrderGenerator")
# ==========================================
# Retail Order Data Generator
# Generates 100 realistic orders
# ==========================================

# Master Data
customers = [f"C10{i:02d}" for i in range(1, 11)]
products = [f"P10{i:02d}" for i in range(1, 11)]
stores = [f"ST0{i:02d}" for i in range(1, 11)]

statuses = [
    "Delivered",
    "Delivered",
    "Delivered",
    "Shipped",
    "Processing",
    "Cancelled"
]

# Product Prices
product_price = {
    "P1001": 65000,
    "P1002": 58000,
    "P1003": 85000,
    "P1004": 78000,
    "P1005": 2500,
    "P1006": 120000,
    "P1007": 70000,
    "P1008": 3500,
    "P1009": 2500,
    "P1010": 8000
}

# Start Date
start_date = datetime(2024, 7, 1)

rows = []

# ==========================================
# Generate 100 Orders
# ==========================================
logger.info("Starting order data generation")

for i in range(1, 101):

    product = random.choice(products)
    quantity = random.randint(1, 5)

    total_amount = product_price[product] * quantity

    order_date = (
        start_date +
        timedelta(days=random.randint(0, 90))
    ).strftime("%Y-%m-%d")

    rows.append([
        f"O{i:04d}",
        random.choice(customers),
        product,
        random.choice(stores),
        order_date,
        quantity,
        total_amount,
        random.choice(statuses)
    ])

# ==========================================
# Save CSV inside datasets folder
# ==========================================

output_file = os.path.join(
    DATASET_DIR,
    "orders.csv"
)

with open(output_file, "w", newline="") as file:

    writer = csv.writer(file)

    writer.writerow([
        "ORDER_ID",
        "CUSTOMER_ID",
        "PRODUCT_ID",
        "STORE_ID",
        "ORDER_DATE",
        "QUANTITY",
        "TOTAL_AMOUNT",
        "ORDER_STATUS"
    ])

    writer.writerows(rows)

logger.info(f"{len(rows)} orders generated successfully")
logger.info(f"Orders file created: {output_file}")

print("=" * 60)
print("SUCCESS!")
print(f"100 Orders generated successfully.")
print(f"File Location : {output_file}")
print("=" * 60)