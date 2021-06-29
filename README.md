# Moonpay
This Repo contains solutions to all the problems. 1-3 are in the root folder with Dockerfile and docker-compose, .docker dir has the seed script. Built a Makefile for the ease of use locally when testing and the makefile itself is quite self explantory. 

Used K6 tool for benchmark testing for an API endpoint.


## Technologies:
- AWS ECR
- AWS ALB
- AWS RDS
- AWS ECS
- Gitub Actions
- Docker Compose
- K6
- Terraform

## Usage

Use the Makefile to build the dockerfile, test, and deploy the container.

```Bash
$ make run-local
$ make destroy-local
$ make test-benchmark 
```
Assuming AWS profile is setup correctly for credentials you can run run below to deploy the stack to AWS.

```Bash
$ cd terraform
$ AWS_PROFILE=aws_test_profile make init plan apply
```

## Github Action

The folder contains regular CI workflows in github actions. 


## Terraform

The terraform folder is for the 5 problem with makefile inside. Although its still not finished product but only managed that much with the time i could spend on the problem.