FROM python:3.10-slim
RUN pip install flask
RUN pip install flask-mysql
RUN pip install flask_sqlalchemy
RUN pip install flask_login
RUN pip install flask_wtf
run pip install wtforms
RUN pip install flask_bcrypt
RUN mkdir templates
RUN mkdir static
COPY app3.py /app.py
COPY templates/*  /templates/
COPY static/*  /static/
RUN chmod -R a+rwx static
RUN chmod -R a+rwx templates
CMD ["python","app.py"]
