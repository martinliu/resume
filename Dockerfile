FROM node:lts
ENV NODE_OPTIONS="--openssl-legacy-provider"
# Create app directory
WORKDIR /app

# Install app dependencies
COPY package*.json ./
COPY yarn.lock .

RUN yarn install

COPY . .

Expose 3001

CMD ["yarn", "run", "start"]