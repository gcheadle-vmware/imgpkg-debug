#!/usr/bin/env bash

set +ex
##   Plain image sha256:7b77...9e8a
##  Bundle with plain image sha256:41f7...05f8 (see images.yml in staging/.imgpkg)
## Bundle with nested bundle pushed from command below 
## Bundle copied from lock file from last command in file 

imgpkg push -b index.docker.io/k8slt/imgpkg-debug-staging:1.0 -f staging/ --lock-output staging.lock

imgpkg copy --lock staging.lock --to-repo index.docker.io/k8slt/imgpkg-debug-release --lock-output release.lock

