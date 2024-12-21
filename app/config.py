from pydantic_settings import BaseSettings
from pydantic import Field
import platform
from dotenv import load_dotenv

load_dotenv(dotenv_path='dev.env')

class Config(BaseSettings):
    platform: str = Field(f"{platform.system()}")
    timezone: str = Field('localtime', env='TIMEZONESTR')

    name: str = Field("SearchEngine", env="SERVICE_NAME")
    service_port: int = Field(8084, env='SERVICE_PORT')
    uvicorn_workers: int = Field(1, env='WORKERS')

