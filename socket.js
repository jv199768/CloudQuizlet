// Using Node v20
const net = require('node:net');

const server = net.createServer((c) => {
  console.log('client connected', c.remoteAddress);
  c.write("Hello; world");

  c.on('end', () => {
    console.log('client disconnected');
  });
});

server.on('error', (err) => {
  throw err;
});

server.listen(3000, () => {
  console.log('server bound');
});

//cURL --http0.9 socket.js
