FROM python:3.8.2

ENV DIR /usr/src/yalse

RUN mkdir -p $DIR
WORKDIR $DIR

COPY requirements.pip $DIR
RUN pip3 install --no-cache-dir -r requirements.pip --upgrade

COPY . $DIR

EXPOSE 8000

ENTRYPOINT ["gunicorn", "-w", "2","--timeout", "1200", "-b", "0.0.0.0:8000", "yalse_core.app"]

