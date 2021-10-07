FROM python

WORKDIR /usr/src/app

COPY requirements.txt .
COPY entrypoint.sh .
RUN chmod +x /usr/src/app/entrypoint.sh        # делаем файл исполняемым

RUN pip install -r requirements.txt


ENTRYPOINT ["/usr/src/app/entrypoint.sh"]





