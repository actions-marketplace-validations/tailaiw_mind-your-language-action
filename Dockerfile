FROM python:3.6

USER root

RUN apt install curl jq

COPY profanity-check/requirements.txt /requirements.txt
RUN pip3 install -r /requirements.txt

COPY profanity-check/check.py /check.py
COPY profanity-check/react.py /react.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]