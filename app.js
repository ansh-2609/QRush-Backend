const path = require('path');
const rootDir = require('./utils/pathUtils');
const express = require('express');
const cors = require("cors");
const session = require('express-session');
const appRouter = require('./routes/appRouter');
const authRouter = require('./routes/authRouter');
const MySQLStore = require('express-mysql-session')(session);


const app = express();

const options = {
  host: 'localhost',
  port: 3306,
  user: 'root',
  password: 'Dean1000%',
  database: 'qrush',
};

const sessionStore = new MySQLStore(options);

app.use(cors({
  origin: 'http://localhost:5173',
  credentials: true
}));


app.use(session({
  key: 'connect.sid',
  secret: 'your-secret-key',
  resave: false,
  store: sessionStore,
  saveUninitialized: false,
  cookie: {
    secure: false,             
    httpOnly: true,            
    sameSite: 'lax',
    maxAge: 24 * 60 * 60 * 1000 // 24 hours
  }
}));

app.use(express.json());
app.use(express.urlencoded({ extended: true }));


app.use(authRouter);

app.use(appRouter);


const PORT = 8080;

app.listen(PORT, () => {
  console.log(`Server is running on address http://localhost:${PORT}`);
});
