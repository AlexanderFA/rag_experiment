FROM python:3.9-alpine

RUN apk --no-cache add build-base && \
    pip install poetry

# RUN apk --update upgrade
# RUN apk add build-base

# # RUN apk update && apk add --no-cache \
# #     gcc \
# #     libffi-dev \
# #     python3-dev \
# #     musl-dev \
# #     build-base \
# #     rust \
# #     cargo

# # RUN pip install --no-cache-dir poetry
# # RUN pip install --upgrade pip
# RUN pip install poetry

# # COPY pyproject.toml poetry.lock /application/

# Устанавливаем зависимости с помощью poetry
WORKDIR /application
# RUN poetry install

# Копируем код проекта в контейнер
# COPY . /app/

# Указываем команду для запуска приложения
# CMD ["poetry", "run", "uvicorn", "main:app"]
CMD ["sleep", "infinity"]
