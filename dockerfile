# Stage 1: Build stage
FROM python:3.8-slim as build

WORKDIR /app
RUN apt-get update && apt-get install -y gcc

COPY . .

# Install Flask and Redis client
RUN pip install --no-cache-dir flask redis

# Stage 2: Production stage
FROM python:3.8-slim

WORKDIR /app
COPY --from=build /app /app

EXPOSE 5002

CMD ["python", "count.py"]

