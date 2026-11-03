FROM mcr.microsoft.com/playwright:v1.64.1-noble
WORKDIR /tests
COPY package*.json ./
RUN npm ci
COPY playwright.config.js *.spec.js ./
CMD ["npm", "test"]
