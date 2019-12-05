
FROM node:lts as nuxt-project-node_modules
COPY nuxt-project/package.json nuxt-project/yarn.lock ./
RUN yarn install

FROM node:lts as storybook-project-node_modules
COPY storybook-project/package.json storybook-project/yarn.lock ./
RUN yarn install

FROM node:lts
WORKDIR /app/nuxt-project
COPY --from=nuxt-project-node_modules /node_modules ./node_modules
COPY nuxt-project/. ./
RUN yarn link

WORKDIR /app/storybook-project
COPY --from=storybook-project-node_modules /node_modules ./node_modules
COPY storybook-project/. ./
RUN yarn link nuxt-project

WORKDIR /app