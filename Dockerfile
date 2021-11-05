# non production
FROM node:alpine
WORKDIR /app
COPY . .
RUN apk update && \
    apk upgrade && \
    apk add --no-cache texlive-xetex && \
    apk add texmf-dist-latexextra && \g
    npm run build && \
    npm install
CMD ["npm", "start"]