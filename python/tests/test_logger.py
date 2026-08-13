from utils.logger import get_logger


logger = get_logger("LoggerTest")

logger.info("Logger test started")
logger.warning("This is a warning test")
logger.error("This is an error test")

print("Logger test completed successfully.")