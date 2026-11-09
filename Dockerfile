FROM python:3.12-slim

WORKDIR /app

# ttyd - Web Terminal for Render Free SSH Trick
RUN apt-get update && apt-get install -y curl procps \
    && curl -L https://github.com/tsl0922/ttyd/releases/download/1.7.7/ttyd.x86_64 -o /usr/local/bin/ttyd \
    && chmod +x /usr/local/bin/ttyd \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt

COPY . .

COPY start.sh ./start.sh
RUN chmod +x ./start.sh

CMD ["./start.sh"]
