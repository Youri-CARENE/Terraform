#!/bin/bash

docker build -t terraform-demo .
docker run -v $(pwd)/data:/app/data terraform-demo

