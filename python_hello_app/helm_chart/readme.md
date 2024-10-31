* Create a chart for app

A Release is an instance of a chart running in a Kubernetes cluster
A Chart is a Helm package

* Create a chart for app
```bash
helm create <chart-name>
helm install flask-app .  # because flask dempoyment name is linked to  {{ .Release.Name }}
helm list
helm uninstall flask-app 
```
* Verify resources
```bash
kubectl get all -l app.kubernetes.io/instance=flask-app
```