FROM node:10.15-alpine as build-stage
RUN apk add yarn
WORKDIR /usr/src/frontend/
COPY . .
RUN yarn install && npm run build

FROM nginx:alpine
COPY --from=build-stage /usr/src/frontend/build /usr/share/nginx/html
