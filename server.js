import express from "express";

const app = express();
const port = 3000;

app.get("/", (req, res) => {
  res.status(200).send("Hi Beautiful World");
});

app.listen(port, () => {
  console.log(`🚀 Server running at http://localhost:${port}`);
});
