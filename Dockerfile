FROm node

WORKDIR /usr/src/

COPY . .

EXPOSE 5000

RUN npm i

RUN npx prisma generate

CMD ["ts-node", "./src/server.ts"]