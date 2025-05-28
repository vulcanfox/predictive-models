import os
from dotenv import load_dotenv
import mlflow

# Load environment variables from .env file
load_dotenv("champion_info.env", override=True)

# Get values from environment variables
model_name = os.getenv("MODEL_NAME")
version = os.getenv("VERSION")

if not model_name:
    print(model_name)
    print(version)
    raise ValueError("MODEL_NAME environment variable is not set.")

# Specify MLflow tracking server
mlflow.set_tracking_uri("http://127.0.0.1:5000")

try:
    # Download model artifacts
    mlflow.artifacts.download_artifacts(f"models:/{model_name}/{version}", dst_path="model")
    print("Model downloaded successfully.")
except Exception as e:
    print(f"Failed to download model artifacts: {e}")

