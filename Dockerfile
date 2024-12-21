FROM python:3.11-slim
# FROM --platform=linux/amd64 python:3.11-alpine

WORKDIR /application

COPY requirements.txt /application/requirements.txt
RUN pip install --no-cache-dir -r /application/requirements.txt
# RUN apt-get update && apt-get install -y --no-install-recommends \
#     build-essential \
#     clang \
#     && apt-get clean && rm -rf /var/lib/apt/lists/* \
#     && pip install --no-cache-dir -r /application/requirements.txt

# RUN apk --no-cache add build-base && \
#     apk --no-cache add clang-dev && \
#     pip install -r requirements.txt
#     # ln -s /usr/lib/libclang-cpp.so* /usr/lib/libclang.so && \
#     # if [ -f requirements.txt ]; then python -m pip install --no-cache-dir -r requirements.txt; fi

# CMD ["poetry", "run", "uvicorn", "main:app"]
# python -m app
CMD ["sleep", "infinity"]
