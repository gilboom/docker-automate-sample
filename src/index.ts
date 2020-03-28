import { createServer } from "http";
const config = require("../config.json");
const server = createServer((req, res) => {
  console.log(`${req.method.toUpperCase()} ${req.url}`)
  res.end("Hello World");
});
const port = config.port;
server.listen(port, () => {
  console.log(`listening on ${port}`);
});