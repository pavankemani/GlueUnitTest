FROM python:3.6-slim
MAINTAINER varunkumar032@gmail.com
COPY . /GlueUnitTest
WORKDIR /GlueUnitTest
RUN pip install --no-cache-dir -r requirements.txt
RUN ["pytest", "-v", "--junitxml=GlueUnitTest/reports/result.xml"]
CMD tail -f /dev/null