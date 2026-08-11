"""
Project Settings

Central configuration for the Retail Data Engineering project.
"""

from pathlib import Path

# ==========================================================
# Project Paths
# ==========================================================

PROJECT_ROOT = Path(__file__).resolve().parent.parent

DATASET_DIR = PROJECT_ROOT.parent / "datasets"

# ==========================================================
# Dataset Size
# ==========================================================

NUM_CUSTOMERS = 10
NUM_PRODUCTS = 10
NUM_SUPPLIERS = 10
NUM_STORES = 10
NUM_PROMOTIONS = 10
NUM_ORDERS = 100
NUM_PAYMENTS = 100
NUM_SHIPMENTS = 10