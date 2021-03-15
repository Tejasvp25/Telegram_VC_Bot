FROM python:slim-buster

RUN apt update && apt upgrade -y && \
    apt install --no-install-recommends -y \
        bash \
        curl \
        ffmpeg \
        git 


WORKDIR /usr/src/app/vcbot/

RUN git clone https://github.com/Tejasvp25/Telegram_VC_Bot /usr/src/app/vcbot/

RUN python3 -m pip install -r requirements.txt

CMD ["python3", "main.py"]
