const mysql = require('mysql2');

const db = mysql.createConnection({
  host: 'localhost',
   user: 'root',
   password: 'sql1234',
  database: 'election'
});

module.exports = db;
