### Build Step
FROM node:17.7.1 as builder
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm ci
RUN npm audit fix
COPY . .
RUN npm run build

### Serve Step
FROM node:17.7.31
WORKDIR /app
COPY --from=builder /usr/src/app/build .
COPY --from=builder /usr/src/app/package.json .
COPY --from=builder /usr/src/app/node_modules ./node_modules
EXPOSE 3000
CMD [ "node", "index.js" ]