import http from 'http';
import { foo } from './foo';

http.createServer((req, res) => {
  res.writeHead(200, {'Content-Type': 'text/plain'});
  foo()
  res.end('Hello World\n');
}).listen(3000);

console.log('Server running at http://127.0.0.1:3000/');
