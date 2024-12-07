FROM python:3.11-alpine

RUN apk --update upgrade
RUN apk add --no-cache build-base

# RUN pip install --no-cache-dir poetry
RUN pip install poetry

# COPY pyproject.toml poetry.lock /application/

# Устанавливаем зависимости с помощью poetry
WORKDIR /application
# RUN poetry install

# Копируем код проекта в контейнер
# COPY . /app/

# Указываем команду для запуска приложения
# CMD ["poetry", "run", "uvicorn", "main:app"]
CMD ["sleep", "infinity"]
