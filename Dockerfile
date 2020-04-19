# 6-86: Implementing Multi-Step Builds
# Build stage I (builder)
FROM node:alpine as builder 
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

# Build stage II
FROM nginx
COPY --from=builder /app/build /usr/share/nginx/html


