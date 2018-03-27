# Docker Hub

Min Chen (hid-sp18-405) 

Docker Hub is a cloud-based registry service which allows users to link to code repositories, build their own images and test them, stores manually pushed images, and links to Docker Cloud so they can deploy images to their hosts~\cite{hid-sp18-405-tutorial-dockerhub-overview}. There are both public and private repositories. Companies could have a private repository for use within their own organization, whereas public images can be used by anyone. 

There are thousands of images published on DockerHub. DockerHub is hardcoded into Docker as the default registry, so when you run the docker pull command against any image, it will be downloaded from Docker Hub~\cite{hid-sp18-405-tutorial-dockerhub-blog-use}. It provides a centralized resource for container image discovery, distribution and change management, user and team collaboration, and workflow automation throughout the development pipeline~\cite{hid-sp18-405-tutorial-dockerhub-overview}.

## Create Docker ID and Log In
You could create a Docker ID on the [Docker Hub main page](https://hub.docker.com/). Log-in is not necessary for pulling Docker images from the Hub but necessary for push images. After registration, you get one free private Docker Hub Repository. Upgrade to a paid plan is needed if you need more private repositories.

## Searching for Docker Images
There are two ways to search for Docker images on Docker Hub:

One way is to use the Docker command line tool. You could open an terminal and run the *docker search* command. For example, the following command searches for centOS images:

        docker search centos

and here are the first several lines of the result:

        | NAME                            | DESCRIPTION                  | STAR | OFFICIAL | AUTOMATED |
        |---------------------------------|------------------------------|------|----------|-----------|
        | centos                          | The official build of CentOS | 4130 | [OK]     |           |
        | ansible/centos7-ansible         | Ansible on Centos7           | 105  |          | [OK]      |
        | imagine10255/centos6-lnmp-php56 | centos6-lnmp-php56           | 40   |          | [OK]      |

Notice that the records are sorted by STAR in reverse order. Official repositories are public, certified repositories from vendors and contributors to Docker. They contain Docker images from vendors like Canonical, Oracle, and Red Hat that you can use as the basis to build your applications and services. There is one official repository in this list, the first one, *centos*. 

The other way is to search via the Web Search box at the top of the Docker web page by typing the keyword. The search results can be sorted by number of stars, number of pulls, and whether it is an official image. Then for each search result, you can verify the information of the image by clicking the *details* button to make sure this is the right image that fits your needs. 

## Pulling Images
A particular image (take centos as an example) could be pulled using the following command:

        docker pull centos

Tags could be used to specify the image to pull. By default the tag is latest, therefore the previous command is the same as the following:

        docker pull centos:latest

You could use a different tag:
        
        docker pull centos:6

To check the existing local docker images, run the following command:

        docker images

The results show:

        | REPOSITORY | TAG    | IMAGE ID     | CREATED     | SIZE  |
        |------------|--------|--------------|-------------|-------|
        | centos     | latest | 26cb1244b171 | 2 weeks ago | 195MB |
        | centos     | 6      | 2d194b392dd1 | 2 weeks ago | 195MB |


## Create Repositories
In order to push images to Docker Hub, you need to have a repository created. 

When you first create a Docker Hub user, you see a *Get started with Docker Hub* screen, from which you can click directly into *Create Repository*. You can also use the *Create* menu to *Create Repository*. When creating a new repository, you can choose to put it in your Docker ID namespace, or that of any organization that you are in the owners team~\cite{hid-sp18-405-tutorial-dockerhub-repository}. 

As an example, we created a repository cloudtechnology with the name space minchen57. Hence the full name is minchen57/cloudtechnology


## Pushing Images
To push an image to the repository created, the following steps could be followed:

* Log into Docker Hub from the command line by specifying the username

        docker login --username=minchen57

    Enter the password when prompted. If everything worked you will get a message similar to:

        Login Succeeded

* Check image ID using:

        docker images

    the result looks similar to:

        | REPOSITORY    | TAG    | IMAGE ID     | CREATED     | SIZE   |
        |---------------|--------|--------------|-------------|--------|
        | cloudmesh-nlp | latest | 1f26a5f7a1b4 | 10 days ago | 1.79GB |
        | centos        | latest | 26cb1244b171 | 2 weeks ago | 195MB  |
        | centos        | latest | 2d194b392dd1 | 2 weeks ago | 195MB  |

    and the image with ID 1f26a5f7a1b4 is the one to push to Docker Hub.

* Tag the image

        docker tag 1f26a5f7a1b4 minchen57/cloudtechnology:firsttry

    In general, a good choice for a tag is something that will help you understand what this container should be used in conjunction with, or what it represents.

* Now the list of images becomes:
        
        | REPOSITORY                | TAG      | IMAGE ID     | CREATED     | SIZE   |
        |---------------------------|----------|--------------|-------------|--------|
        | cloudmesh-nlp             | latest   | 1f26a5f7a1b4 | 10 days ago | 1.79GB |
        | minchen57/cloudtechnology | firsttry | 1f26a5f7a1b4 | 10 days ago | 1.79GB |
        | centos                    | latest   | 26cb1244b171 | 2 weeks ago | 195MB  |
        | centos                    | latest   | 2d194b392dd1 | 2 weeks ago | 195MB  |


* Push the image to the repository
        
        docker push minchen57/cloudtechnology

    It shows: 

        The push refers to repository [docker.io/minchen57/cloudtechnology]
        18f9479cfc2c: Pushed 
        e9ddee98220b: Pushed 
        1d3522002590: Pushed 
        e3ab85ae555e: Pushed 
        bae105d9c555: Pushed 
        6b0c2fb2fe92: Pushed 
        c33cd8954775: Pushed 
        ecafeebb22db: Pushed 
        e0dbd107774a: Pushed 
        8cb07daea6f6: Pushed 
        db584c622b50: Mounted from library/ubuntu 
        52a7ea2bb533: Mounted from library/ubuntu 
        52f389ea437e: Mounted from library/ubuntu 
        88888b9b1b5b: Mounted from library/ubuntu 
        a94e0d5a7c40: Mounted from library/ubuntu 
        firsttry: digest: sha256:305b0f911077d9d6aab4b447b77c4dfbddf68983fd12c0f2df95c763466d3588 size: 3463

    Now the image is available on Docker Hub and everyone can pull it since it is a public repository by using command: 

        docker pull minchen57/cloudtechnology

## Resources

* The offical [Overview of Docker Hub](https://docs.docker.com/docker-hub/#use-official-repositories)

* Information about using docker repositories can be found at [Repositories on Docker Hub](https://docs.docker.com/docker-hub/repos/)

* There are some blogs discussing the use of Docker Hub, for example, [How to Use DockerHub](https://www.linux.com/blog/learn/intro-to-linux/2018/1/how-use-dockerhub), [Docker Tutorial Series](https://rominirani.com/docker-tutorial-series-part-4-docker-hub-b51fb545dd8e)





