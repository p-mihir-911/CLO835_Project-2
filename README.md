## CLO 835 : Project 2 - Docker and Kubernetes

## Here are some of the actions we must take to finish this project.

### Step 1:

First and first, I had fork / clone the git repository containing app.py; in our situation, the professor provided us with the Python file to complete this project.

After receiving the Python file, I copied it to my local system.

### Step 2:

The contents of the working directory, any required dependencies, and the port on which the application will run are all contained in the Dockerfile that is built in the same folder in the second step.

Just upload the Dockerfile to GitHub in the meanwhile.

### Step 3:

We have to construct the Docker image at this point.

Create the image after logging into Docker Hub.

```bash
docker build -t mihirp911/project2clo835:latest .
```

Then, push the image to docker hub.

```bash
docker push mihirp911/project2clo835:latest
```

Step 4:

Creating a  "service.yaml" and "deployment.yaml" files for deploying the application in Kubernetes.

Making my Docker image, "project2clo835," available through a Kubernetes Deployment YAML file.

Additionally, I am using NodePort, I'm creating a YAML file for the Kubernetes Service that will expose my application on port 3030.

Also, build network and expose the port - 3030 using below commands.

```bash
docker network create project2clo835
```

```bash
 docker run --network project2clo835 --name python-app -dp 3030:3030 mihirp911/project2clo835:latest
```

Step 5:

Deploying the application using Kubernetes manifest.

Verify that your minikube is turned on. If not, use the following command to launch it and verify its status:

```bash
minikube start
```

```bash
minikube status
```

Next, Apply the deployment and service manifests using below commands.

```bash
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
```

Verify deployment status.

```bash
kubectl get deployments

kubectl get pods

kubectl get services
```

Step 6:

To test the NodePort-based application access. locating the Kubernetes node's external IP

The URL {http://172.23.239.167:30333} to open the program and obtain the time and location data currently shown
