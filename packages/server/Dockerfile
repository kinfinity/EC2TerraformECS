# build dependencies
FROM node:alpine AS deps
# Check https://github.com/nodejs/docker-node/tree/b4117f9333da4138b03a546ec926ef50a31506c3#nodealpine to understand why libc6-compat might be needed.
RUN apk add --no-cache libc6-compat git diffutils
WORKDIR /app
COPY package.json yarn.lock ./

RUN yarn install

# Run tests and rebuild the source code
FROM node:alpine AS builder

WORKDIR /app
COPY . .
COPY --from=deps /app/node_modules ./node_modules
# RUN yarn test
RUN yarn build

# Production image, copy all the files and run node
FROM node:alpine AS runner
WORKDIR /app

ENV NODE_ENV production

COPY --from=builder /app ./

EXPOSE 3000

CMD ["yarn", "start"]
