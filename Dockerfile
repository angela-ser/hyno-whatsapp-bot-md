FROM fusuf/whatsasena:latest
RUN git clone https://github.com/paht-test-91/hyno-whatsapp-bot-md.git /root/WhatsAsena/
WORKDIR /root/WhatsAsena/
RUN apk --no-cache --virtual build-dependencies add \
    python \
    make \
    g++ \
    && npm install \
    && apk del build-dependencies
RUN yarn install --network-concurrency 1
CMD ["node", "index"]
