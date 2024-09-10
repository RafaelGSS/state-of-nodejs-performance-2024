# State of Node.js Performance 2024

This report was separated into three groups:

1. Node.js Internal Benchmark
2. HTTP Servers

## Dedicated Host

* Dedicated Host on AWS
* Running a dedicated instance
  * c6i.xlarge (Ice Lake) 3,5 GHz - Computing Optimized
  * 4 vCPUs
  * 8 GB Mem

## Setup

```console
cd ~/repos/node
nvm install v22.8.0
cp $(which node) ./node22
nvm install v20.17.0
cp $(which node) ./node20
nvm install v18.20.4
cp $(which node) ./node18
```

## Node.js Internal Benchmark

1. Node.js Internal Benchmark

```console
$ ./benchmark.sh
```
