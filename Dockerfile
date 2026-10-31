FROM alpine:latest
RUN apk add --no-cache curl unzip
# Xray သို့မဟုတ် V2ray binary ကို ထည့်သွင်းခြင်း
ADD https://github.com/XTLS/Xray-core/releases/latest/download/Xray-linux-64.zip /tmp/xray.zip
RUN unzip /tmp/xray.zip -d /usr/bin/ && rm /tmp/xray.zip
EXPOSE 80
CMD ["xray", "-config", "/etc/xray/config.json"]
