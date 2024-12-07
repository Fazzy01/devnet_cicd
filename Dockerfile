FROM python:alpine

EXPOSE 9000
# ADD sample_app.py  requirements.txt code/
ADD . /code/
WORKDIR /code
RUN pip install -r requirements.txt
CMD [ "python", "app.py" ]
