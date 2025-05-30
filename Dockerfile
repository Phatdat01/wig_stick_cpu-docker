FROM python:3.10-slim

WORKDIR /app

COPY wig_stick /app

RUN pip install -r requirement.txt

EXPOSE 5000

CMD ["python", "api.py"]