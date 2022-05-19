call kubectl delete deploy backend

call npm run build

call docker build -t backend .

call docker tag backend varasrinivas.azurecr.io/backend

call docker image push varasrinivas.azurecr.io/backend

call kubectl apply -f ./k8/deployment_azure.yaml