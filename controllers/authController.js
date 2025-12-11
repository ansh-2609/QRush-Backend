const { check, validationResult } = require("express-validator");
const User = require("../models/user/user");
const bcryptjs = require("bcryptjs");
const CStatus = require("../models/CStatus/cStatus");
const user_Badges = require("../models/userBadges/userBadges");
const ImageQuizStatus = require("../models/imageQuizStatus/imageQuizStatus");
const FinishQuizStatus = require("../models/finishQuizStatus/finishQuizStatus");
const EscapeQuizStatus = require("../models/escapeQuizStatus/escapeQuizStatus");
const validateEmail = require("deep-email-validator").validate;
const axios = require("axios");


exports.postLogin = async (req, res) => {
  const { email, password } = req.body;

  const user = await User.findUser(email);
  if (!user) {
    return res.json({ success: false, message: ["Invalid email or password"] });
  }

  const isMatch = await bcryptjs.compare(password, user.password);
  if (!isMatch) {
    return res.json({ success: false, message: ["Invalid email or password"] });
  }

  // Set session properties
  req.session.userId = user.id;
  req.session.userEmail = user.email;
  req.session.userName = user.name;
  req.session.isLoggedIn = true;

  console.log("Before save:", { userId: req.session.userId, sessionID: req.sessionID });

  // Save and send response
  req.session.save((err) => {
    if (err) {
      console.error("Session save error:", err);
      return res.status(500).json({ success: false, message: 'Session save failed' });
    }
    
    console.log("After save - Session saved successfully:", { userId: req.session.userId, sessionID: req.sessionID });
    console.log("Cookie settings:", req.sessionID);
    
    res.status(200).json({ 
      success: true, 
      message: 'Login successful',
      user: { id: req.session.userId, email: req.session.userEmail, name: req.session.userName }
    });
  });
};

exports.postLogout = (req, res) => {
  req.session.destroy((err) => {
    if (err) {
      console.error("Error destroying session:", err);
      return res.status(500).json({ success: false, message: 'Logout failed' });
    }
    
    // Clear the cookie after session is destroyed
    res.clearCookie('connect.sid', {
      path: '/',
      httpOnly: true,
      secure: true,
      sameSite: 'none'
    });
    
    console.log("Session destroyed and cookie cleared");
    res.json({ success: true, message: 'Logout successful' });
  });
}

exports.checkAuth = (req, res) => {
  console.log("Check auth - Session ID:", req.sessionID);
  console.log("Check auth - User ID:", req.session.userId);
  
  if (req.session.userId) {
    res.json({ 
      isLoggedIn: true, 
      userId: req.session.userId,
      userEmail: req.session.userEmail,
      userName: req.session.userName
    });
  } else {
    res.json({ 
      isLoggedIn: false,
      userId: null
    });
  }
};

exports.postSignup = [
  check("firstname")
    .trim()
    .isLength({ min: 2 })
    .withMessage("First name must be at least 2 characters long")
    .matches(/^[A-Za-z]+$/)
    .withMessage("First name must contain only alphabetic characters"),

  check("lastname")
    .trim()
    .matches(/^[A-Za-z]*$/)
    .withMessage("Last name must contain only alphabetic characters"),

  check("username")
    .trim()
    .isLength({ min: 2 })
    .withMessage("Username must be at least 2 characters long")
    .custom(async (value, { req }) => {
      const [rows] = await User.fetchUsername();
      const usernames = rows.map((u) => u.username);
      if(usernames.includes(value)){
        throw new Error("Username is already taken");
      }
      else{
        return true;
      }
    })
    .matches(/^[A-Za-z0-9_]+$/)
    .withMessage(
      "Username must contain only alphanumeric characters and underscores"
    ),

  // check("email")
  //   .isEmail()
  //   .withMessage("Please enter a valid email address")
  //   .custom(async (value) => {
  //     const { valid } = await validateEmail(value);
  //     if (!valid) {
  //       throw new Error("Invalid or undeliverable email address");
  //     }
  //     return true;
  //   })
  //   .custom(async (value, { req }) => {
  //     const [rows] = await User.fetchEmail();
  //     const emails = rows.map((u) => u.email);
  //     if(emails.includes(value)){
  //       throw new Error("Email is already taken");
  //     }
  //     else{
  //       return true;
  //     }
  //   })
  //   .normalizeEmail(),

  // check("email")
  // .isEmail()
  // .withMessage("Please enter a valid email address")
  // .custom(async value => {
  //   const result = await validateEmail(value, {
  //     validateMailbox: false,  // <-- Disable SMTP check
  //     validateSMTP: false      // <-- Disable SMTP connection
  //   });

  //   if (!result.valid) {
  //     throw new Error("Invalid email address");
  //   }
  //   return true;
  // })
  // .normalizeEmail(),



// check("email")
//   .isEmail()
//   .withMessage("Please enter a valid email address")
//   .custom(async (email) => {
//     const response = await axios.get(
//       // `https://emailvalidation.abstractapi.com/v1/?api_key=${process.env.ABSTRACT_API_KEY}&email=${email}`
//       `https://emailreputation.abstractapi.com/v1/?api_key=${process.env.ABSTRACT_API_KEY}&email=${email}`
//     );

//     if (response.data.deliverability !== "DELIVERABLE") {
//       throw new Error("Email does not appear to exist or accept mail");
//     }

//     return true;
//   })
//   .normalizeEmail(),

  check("email")
  .isEmail()
  .withMessage("Please enter a valid email address")
  .custom(async (email) => {
    const response = await axios.get(
      `https://emailreputation.abstractapi.com/v1/?api_key=${process.env.ABSTRACT_API_KEY}&email=${email}`
    );

    const deliverability = response.data?.email_deliverability?.status;
    const isDisposable = response.data?.email_quality?.is_disposable;
    const isFormatValid = response.data?.email_deliverability?.is_format_valid;

    // 1. Basic format safety check
    if (!isFormatValid) {
      throw new Error("Invalid email format");
    }

    // 2. Block disposable email services
    if (isDisposable) {
      throw new Error("Disposable emails are not allowed");
    }

    // 3. Check deliverability
    // Possible values: "deliverable", "undeliverable", "risky", "unknown"
    if (deliverability !== "deliverable") {
      throw new Error("Email does not appear to exist or accept mail");
    }

    return true;
  })
  .normalizeEmail(),


  check("password")
    .isLength({ min: 8 })
    .withMessage("Password must be at least 8 characters long")
    .matches(/[a-z]/)
    .withMessage("Password must contain at least one lowercase letter")
    .matches(/[A-Z]/)
    .withMessage("Password must contain at least one uppercase letter")
    .matches(/[0-9]/)
    .withMessage("Password must contain at least one number")
    .matches(/[\W_]/)
    .withMessage("Password must contain at least one special character")
    .trim(),

  check("confirmpassword")
    .trim()
    .custom((value, { req }) => {
      if (value !== req.body.password) {
        throw new Error("Passwords do not match");
      }
      return true;
    }),

  async (req, res) => {
    const { firstname, lastname, username, email, password, confirmpassword } =
      req.body;
    const errors = validationResult(req);

    if (!errors.isEmpty()) {
      return res.json({
        success: false,
        errorMessages: errors.array().map((error) => error.msg),
        oldInput: {
          firstname,
          lastname,
          username,
          email,
          password,
        },
      });
    }

    bcryptjs.hash(password, 12, async (err, hashedPassword) => {
      try {
        const user = new User(
          null,
          firstname,
          lastname,
          username,
          email,
          hashedPassword
        );

        await user.insert();

        const userDetail = await User.findUser(email);
        const userId = userDetail.id;

        await user_Badges.insert(userId);

        await CStatus.insert(userId);

        await ImageQuizStatus.insert(userId);

        await FinishQuizStatus.insert(userId);

        await EscapeQuizStatus.insert(userId);

        res.status(201).json({ success: true, message: "Signup successful" });
      } catch (err) {
        console.error("Error inserting user:", err);
        return res.status(500).json({ success: false });
      }
    });
  },
];