FROM python:3.12-slim

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    APP_ENV=prod \
    APP_HOST=0.0.0.0 \
    APP_PORT=5000 \
    PORT=5000 \
    SCHULIMPFUNG_DATA_DIR=/var/lib/schulimpfung \
    SCHULIMPFUNG_LOG_DIR=/var/log/schulimpfung

WORKDIR /app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ARG BUILD_DATE=2026-11-03
ENV BUILD_DATE=${BUILD_DATE}

RUN adduser --disabled-password --gecos "" appuser \
    && mkdir -p /var/lib/schulimpfung/sessions /var/log/schulimpfung \
    && chown -R appuser:appuser /var/lib/schulimpfung /var/log/schulimpfung /app

USER appuser

EXPOSE 5000

HEALTHCHECK --interval=30s --timeout=5s --start-period=10s --retries=3 CMD ["python", "-c", "import os; from urllib.request import urlopen; urlopen('http://127.0.0.1:5000' + os.environ.get('APPLICATION_ROOT', '').rstrip('/') + '/health/ready', timeout=3).read()"]

CMD ["waitress-serve", "--host=0.0.0.0", "--port=5000", "--threads=1", "app:app"]
