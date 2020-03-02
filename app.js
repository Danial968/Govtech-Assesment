require("dotenv").config();

const express = require("express");
const app = express();
const userRouter = require("./api/users/user.router");
const serverless = require('serverless-http')

app.use(express.json());


app.use("/api", userRouter);

const port = process.env.PORT || 3000;

app.listen(port,()=>{
    module.exports.handler = serverless(app);
    console.log("Server up and running on Port", process.env.APP_PORT)
});

module.exports = app
