#! /bin/bash
docker run  -d --name node-app-1 -w /app -e "PORT=3001" --mount type=bind,source=./node-app,target=/app --network labnet --network-alias nodeapp1 node:22-alpine3.19 npm start
docker run -d --name node-app-2 -w /app2 -e "PORT=3002" --mount type=bind,source=./node-app,target=/app2 --network labnet --network-alias nodeapp2 node:22-alpine3.19 npm start
docker run -d --name node-app-3 -w /app3 -e "PORT=3003" --mount type=bind,source=./node-app,target=/app3 --network labnet --network-alias nodeapp3 node:22-alpine3.19 npm start
