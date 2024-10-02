FROM python:3.8-slim
WORKDIR /flask_app
ADD . /flask_app
RUN python3 -m venv venv
RUN . venv/bin/activate && pip install -r requirements.txt
EXPOSE 5000
ENV PATH="/flask_app/venv/bin:$PATH"
CMD ["python3", "flask_docker.py"]
