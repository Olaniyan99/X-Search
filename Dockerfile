# Anything beyond local dev should pin this to a specific version at https://hub.docker.com/_/node/
FROM node:12

# install dependencies in a different location for easier app bind mounting for local development
WORKDIR /user
COPY package.json package-lock.json tsconfig.app.json tsconfig.spec.json tsconfig.json ./
RUN npm install && npm cache clean --force
ENV PATH /opt/node_modules/.bin:$PATH

WORKDIR /user/app
COPY . .
RUN npm run build

# Build source and clean up
RUN npm install
EXPOSE 80
CMD ["npm", "start"]