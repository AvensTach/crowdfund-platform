FROM python:3.11-slim

WORKDIR /app

# Запобігає створенню .pyc файлів і буферизації виводу
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Встановлюємо залежності
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Копіюємо проект
COPY . .