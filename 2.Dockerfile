FROM ubuntu:20.04
RUN apt-get install && apt-get update
RUN apt-get install python3 python3-pip -y
ADD requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
EXPOSE 90 
CMD ["python3", "app.py"]