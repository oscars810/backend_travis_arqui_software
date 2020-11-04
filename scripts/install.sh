#!/bin/bash
pwd=$( aws ecr get-login-password )
docker container stop $(docker container ls -aq)
docker login -u AWS -p $pwd https://379212824536.dkr.ecr.us-east-1.amazonaws.com
docker pull 379212824536.dkr.ecr.us-east-1.amazonaws.com/backend-g25

