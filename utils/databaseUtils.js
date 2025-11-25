const mysql = require('mysql2');

const pool = mysql.createPool({
    host: 'localhost',
    user:'root',
    password:'Dean1000%',
    database:'qrush',
})

module.exports = pool.promise();