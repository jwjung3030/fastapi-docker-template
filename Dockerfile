# Python 기반 이미지
FROM python:3.11-slim

# 작업 디렉토리 생성
WORKDIR /app

# FastAPI & Uvicorn 설치
RUN pip install --no-cache-dir fastapi uvicorn

# 소스 복사
COPY main.py .

# FastAPI 실행 (Uvicorn 사용)
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8081"]
