[![CircleCi](https://circleci.com/gh/himanshuvashist/udacity-cloud-devops-p4.svg?style=svg)](https://app.circleci.com/pipelines/github/himanshuvashist/udacity-cloud-devops-p4)

## Project Overview

In this project, I have applied the skills which i have acquired in this course to operationalize a Machine Learning Microservice API. 

There is a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests the ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project i have:
* Test project code using linting
* Completed a Dockerfile to containerize this application
* Deployed containerized application using Docker and made a prediction
* Improved the log statements in the source code for this application
* Configured Kubernetes and created a Kubernetes cluster
* Deployed a container using Kubernetes and made a prediction
* Uploaded a complete Github repo with CircleCI to indicate that my code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase my abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh `
3. Run in Kubernetes:  `./run_kubernetes.sh dockerhubUsername reponame`
