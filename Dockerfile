FROM node
WORKDIR /app
COPY . .
RUN cd /app/backend
CMD npm start
EXPOSE 3000

