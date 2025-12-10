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
    // "http://localhost:5173",
    "https://qrush-chi.vercel.app" 
  ],
  methods: ["GET", "POST", "PUT", "DELETE"],
  credentials: true,
  allowedHeaders: ['Content-Type']
}));

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// Session middleware MUST come before routes
app.use(session({
  key: 'connect.sid',
  secret: process.env.SESSION_SECRET,
  resave: false,
  store: sessionStore,
  saveUninitialized: false,
  cookie: {
    secure: true,        // HTTPS only
    httpOnly: true,      // Prevent JS access
    sameSite: 'none',    // Allow cross-site
    maxAge: 1000 * 60 * 60 * 24 // 24 hours
  }
}));

// Disable caching for auth endpoints
app.use((req, res, next) => {
  if (req.path.includes('login') || req.path.includes('logout') || req.path.includes('check-auth')) {
    res.set('Cache-Control', 'no-store, no-cache, must-revalidate, proxy-revalidate');
    res.set('Pragma', 'no-cache');
    res.set('Expires', '0');
  }
  next();
});

app.use(authRouter);

app.use(appRouter);


const PORT = 8080;

app.listen(PORT, () => {
  console.log(`Server is running on address http://localhost:${PORT}`);
});
