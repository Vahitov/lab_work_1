FROM ubuntu
ENV TZ=Asia/Novosibirsk
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get -y update && apt-get install -y php

WORKDIR /usr

COPY . /usr

CMD ["php", "text.txt"]
