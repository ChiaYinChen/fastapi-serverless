from pydantic_settings import BaseSettings


class Settings(BaseSettings):
    # application
    API_PREFIX: str = "/api"
    DEBUG: bool = False
    LOG_LEVEL: str = "INFO"


settings = Settings()
