const express = require("express");
const { networkInterfaces } = require("os");

let app = express();

app.get("/", (req, res) => {
  res.send("Hello World");
});

app.get("/ip", (req, res) => {
  let network = networkInterfaces();

  res.send(network?.eth0?.[0]?.address);
});

app.listen(80, () => {});