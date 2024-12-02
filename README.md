# course_materials
Materials for training and for **container-to-pod** masterclass (Container to Pod: A 1-Hour Expedition)


## First app
* A minimal [Flask](https://flask.palletsprojects.com/en/3.0.x/quickstart/#a-minimal-application) + Redis (can be used as a database/cache/streaming-engine/message broker) [docs here](https://github.com/dejanu/course_materials/tree/main/python_hello_app).

### ToDos

* Create a Dockerfile (explore [hadoling] linter: `docker run --rm -i hadolint/hadolint < Dockerfile`)
* Build and push the image to [docker registry](https://hub.docker.com/) (explore a scanner like [trivy](https://github.com/aquasecurity/trivy))
* Create a deployment for the image

## Docker flags

* Search official images for desired <IMAGE>: `docker search --format "table {{.Name}}\t{{.StarCount}}\t{{.IsOfficial}}" <IMAGE> `
* Output image name and tag: `docker images --format '{{.Repository}} and {{.Tag}}'`
* Output image name, tag and elapsed time + timestamp since the image has been created: `docker images --format "{{.Repository}}:{{.Tag}} {{.CreatedSince}} --> {{.CreatedAt}}"`
* Inspect `Cmd` for desired <IMAGE>: `docker inspect -f '{{.Config.Cmd}}' <IMAGE>`
* Inspect `Entrypoint` for desired <IMAGE>: `docker inspect -f '{{.Config.Entrypoint}} <IMAGE>'`
* Inspect attached containers to bridge network: `docker inspect network bridge --format "{{json .Containers }}"`
* Inspect storage: `docker info -f 'Storage drive: {{.Driver}} and storage path {{.DockerRootDir}}'`
* Inspect container runtimes: `docker system info --format "{{.Runtimes}}  {{.DefaultRuntime}}"`



## Usefull links

* Remember that you can refer to the official [k8s documentation](https://kubernetes.io/docs/home/)
* Gist with K8S upgrade steps 👉 [here](https://gist.github.com/dejanu/89ec2565d3a923a368f5dc046259e2b9)
* Hands-on Docker and K8s labs [killercoda.com/dejanualex/](https://killercoda.com/dejanualex/)
* [Ops Jargon](https://gist.github.com/dejanu/a761175e9972d689421cbf435bf98223) -  jargon refers to words/expressions that are used in special or technical ways by particular groups of people...OPS


## Articles
### WIP

* [Path to observability: Prometheus|Kubernetes](https://www.linkedin.com/pulse/path-observability-prometheuskubernetes-alexandru-dejanu-ufz8c/)
* [containers-empathic-manifesto](https://www.linkedin.com/pulse/containers-empathic-manifesto-alexandru-dejanu-1xuzf/)

* [kubernetes-more-than-afterthought-part-I](https://www.linkedin.com/pulse/kubernetes-more-than-afterthought-part-i-alexandru-dejanu-tcc5f/)

## Tidbits

* Containers are often referred to as “lightweight” because they share the machine’s OS kernel. Containers are just a fancy way to run a process, not lightweight VMs, a container provides operating-system-level virtualization by abstracting the "user space".

* We don't put `ssh, curl, wget` into containers we just package the app and its dependencies.

* Usually, when deploying an application, you're gonna need more than one tool, a proper version for each tool, updated documentation, and not least of all proper coordination in terms of workflow.


## Slides

* Save slides on local
```bash
curl https://raw.githubusercontent.com/dejanu/course_materials/main/masterclass_slides.key -o masterclass_slides.key
```