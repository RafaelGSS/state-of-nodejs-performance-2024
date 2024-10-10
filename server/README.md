# Server Benchmark

Machine:

HTTP Benchmarking Tools:

* [autocannon](https://github.com/mcollina/autocannon)
* [wrk2](https://github.com/giltene/wrk2)

Node.js HTTP Servers:

* [fastify](https://github.com/fastify/fastify)
* [express](https://github.com/expressjs/express)

Route:

Return an `application/json` with `{ "hello": "world" }`.

## Results

### Node.js 20

Express:

```console
~/actions-runner$ npx autocannon -c 500 -d 120 -W [ -c 50 -d 5 ] http://localhost:3000
...
```

Fastify

```console
~/actions-runner$ npx autocannon -c 500 -d 120 -W [ -c 50 -d 5 ] http://localhost:3000
...
```

### Node.js 22

TBD
