FROM python

WORKDIR /usr/src/app
# копируем requirements. и entrypoint.sh в  образ в workdir(/usr/src/app)
COPY requirements.txt .
COPY entrypoint.sh .
RUN chmod +x /usr/src/app/entrypoint.sh        # делаем файл исполняемым

RUN pip install -r requirements.txt


# копируем проект из хоста в образ
COPY . .
ENTRYPOINT ["/usr/src/app/entrypoint.sh"]