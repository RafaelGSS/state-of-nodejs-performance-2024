const http = require('node:http');

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');

  res.end('Hello, World!\n');
});

server.listen(process.env.PORT, '0.0.0.0', () => {
  console.log(`Server running at http://0.0.0.0:${process.env.PORT}/`);
});
