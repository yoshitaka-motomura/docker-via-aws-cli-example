# Docker with AWS CLI v2
This image is based on the official Ubuntu Docker image and includes the AWS CLI v2.

## Description
This is an example for uploading a file to AWS S3 using a Docker image
Using this method in a normal Mac, Linux, or Windows environment is nonsense.
It may be useful if you have a certain version of the Docker engine installed but cannot install AWS CLI V2, but in that case we recommend that you review the environment itself.

## Requirements
- Docker
- Make

## Usage
```bash
make run
```