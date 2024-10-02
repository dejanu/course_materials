# course_materials
Materials for training


## First app
* A minimal [Flask](https://flask.palletsprojects.com/en/3.0.x/quickstart/#a-minimal-application) app [docs here](https://github.com/dejanu/course_materials/tree/main/python_hello_app).

* Create a Dockerfile to build the image.



## Docker flags


* Output image name and tag: `docker images --format '{{.Repository}} and {{.Tag}}'`
* Output image name, tag and elapsed time + timestamp since the image has been created: `docker images --format "{{.Repository}}:{{.Tag}} {{.CreatedSince}} --> {{.CreatedAt}}"`
* Inspect `Cmd` for desired <IMAGE>: `docker inspect -f '{{.Config.Cmd}}' <IMAGE>`
* Inspect `Entrypoint` for desired <IMAGE>: `docker inspect -f '{{.Config.Entrypoint}} <IMAGE>'`
* Search if there are official images for desired <IMAGE>: `docker search --format "table {{.Name}}\t{{.StarCount}}\t{{.IsOfficial}}" <IMAGE> `
* Inspect attached containers to bridge network: `docker inspect network bridge --format "{{json .Containers }}"`
* Inspect storage: `docker info -f 'Storage drive: {{.Driver}} and storage path {{.DockerRootDir}}'`
* Inspect container runtimes: `docker system info --format "{{.Runtimes}}  {{.DefaultRuntime}}"`






