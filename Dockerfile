# FROM python:3.8-slim
FROM python:3.8-slim

WORKDIR /app

RUN pip install --no-cache-dir jupyterlab

ENV PORT=8080

EXPOSE 8080

# CMD to start Jupyter Lab without token
CMD jupyter lab --ip=0.0.0.0 --port=$PORT --no-browser --allow-root --NotebookApp.token=''
