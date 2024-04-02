#!/bin/bash

echo "docker via s3 upload"
bucket=$AWS_BUCKET
dir=/app/data
files=(${dir}/*)

num_files=${#files[@]}

for (( i=0; i<${num_files}; i++ )); do
  file=${files[$i]}
  aws s3 cp ${file} s3://${bucket}/
  ## バケットの中のディレクトリにアップロードする場合
  ## aws s3 cp ${file} s3://${bucket}/dir/
done

