import csv
import random
import os

from config.constants import (
    PAYMENT_METHODS,
    PAYMENT_STATUSES,
)

from config.settings import DATASET_DIR
from utils.logger import get_logger

logger = get_logger("PaymentGenerator")

# ==========================================
# Retail Payment Data Generator
# Reads orders.csv and generates payments.csv
# ==========================================


orders_file = os.path.join(
    DATASET_DIR,
    "orders.csv"
)

payments_file = os.path.join(
    DATASET_DIR,
    "payments.csv"
)
logger.info("Starting payment data generation")

payments = []

# Read Orders
with open(orders_file, "r") as file:

    reader = csv.DictReader(file)

    for i, row in enumerate(reader, start=1):

        payments.append([
            f"PM{i:03}",
            row["ORDER_ID"],                  # <-- Uses Order ID from orders.csv
            random.choice(PAYMENT_METHODS),
            row["ORDER_DATE"],               # Payment date same as order date
            random.choice(PAYMENT_STATUSES),
            row["TOTAL_AMOUNT"]              # Payment amount = order amount
        ])

# Save payments.csv
with open(payments_file, "w", newline="") as file:

    writer = csv.writer(file)

    writer.writerow([
        "PAYMENT_ID",
        "ORDER_ID",
        "PAYMENT_METHOD",
        "PAYMENT_DATE",
        "PAYMENT_STATUS",
        "AMOUNT"
    ])

    writer.writerows(payments)

logger.info(f"{len(payments)} payments generated successfully")
logger.info(f"Payments file created: {payments_file}")

print("=" * 60)
print("SUCCESS!")
print(f"{len(payments)} Payments generated successfully.")
print(f"File Location : {payments_file}")
print("=" * 60)