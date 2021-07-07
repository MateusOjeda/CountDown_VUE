FROM node:12.2.0-alpine as builder
ENV CI=1
WORKDIR /src/app
COPY ./package.json package-lock.json ./
RUN npm i && npm cache clean --force
RUN npm install vuetify
RUN npm install sass@~1.32 sass-loader deepmerge -D
COPY . .
RUN npm run build

FROM nginx:1.16.0-alpine
HEALTHCHECK --timeout=1s --retries=99 \
        CMD wget -q --spider http://127.0.0.1:80/ \
         || exit 1
RUN apk add --update --upgrade --no-cache wget
ADD ./nginx/default.conf /etc/nginx/conf.d/default.conf
COPY --from=builder /src/app/dist /usr/share/nginx/html
#COPY --from=builder /src/app /tmp/src-app
#COPY --from=builder /root /tmp/root
