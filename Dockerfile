FROM quay.io/lyfe00011/md:beta
RUN git clone https://github.com/paht-test-91/hyno-whatsapp-bot-md.git /root/HyNO/
WORKDIR /root/HyNO/
RUN yarn install --network-concurrency 1
CMD ["node", "index.js"]
