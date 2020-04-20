# 6-86: Implementing Multi-Step Builds
# Build stage I (builder)
FROM node:alpine
WORKDIR '/app'
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# Build stage II
FROM nginx
EXPOSE 80
COPY --from=0 /app/build /usr/share/nginx/html
