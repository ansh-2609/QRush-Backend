const path = require('path');
const rootDir = require('./utils/pathUtils');
const express = require('express');
const cors = require("cors");
const session = require('express-session');
const appRouter = require('./routes/appRouter');
const authRouter = require('./routes/authRouter');
const MySQLStore = require('express-mysql-session')(session);
require('dotenv').config();

const app = express();

// Trust proxy - important for HTTPS detection
app.set('trust proxy', 1);

const options = {
  host: process.env.DB_HOST,
  port: process.env.DB_PORT,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
};

const sessionStore = new MySQLStore(options);

app.use(cors({
  origin: [
    "http://localhost:5173",
    "https://qrush-chi.vercel.app" 
  ],
  methods: ["GET", "POST", "PUT", "DELETE"],
  credentials: true,
  allowedHeaders: ['Content-Type']
}));

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.use(session({
  key: 'connect.sid',
  secret: process.env.SESSION_SECRET,
  resave: false,
  store: sessionStore,
  saveUninitialized: false,
  cookie: {
    secure: true,        
    httpOnly: true,      
    sameSite: 'none',    
    maxAge: 1000 * 60 * 60 * 24 // 24 hours
  }
}));

app.use(authRouter);

app.use(appRouter);


const PORT = 8080;

app.listen(PORT, () => {
  console.log(`Server is running on address http://localhost:${PORT}`);
});
