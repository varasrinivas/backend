call kubectl delete deploy backend

call npm run build

call docker build -t backend .

call docker tag backend localhost:5000/backend

call docker image push localhost:5000/backend

call kubectl apply -f ./k8/deployment.yaml