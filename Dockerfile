FROM python:3.9.5

COPY requirements.txt /requirements.txt
RUN pip install -r requirements.txt

COPY main.py .

CMD ["uvicorn", "main:app", "--host","0.0.0.0","--port","6004"]
