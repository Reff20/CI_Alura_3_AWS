FROM ubuntu:latest

EXPOSE 8000

WORKDIR /app

ENV HOST=localhost DB_PORT=5432

ENV USER=root PASSWORD=root DBNAME=root

CMD ["go build main.go"]

COPY ./main main

CMD [ "./main" ]
