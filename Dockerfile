#
# NOTE: This is the Dockerfile to create the Docker Image containing the commissions logic code.
#

#Base Image
FROM continuumio/anaconda3

# set the working directory
WORKDIR /code/commissions

# install dependencies
COPY ./requirements.txt ./
RUN pip install --no-cache-dir --upgrade -r requirements.txt


# start python file
COPY ./main.py ./
CMD ["python3", "./main.py"]
