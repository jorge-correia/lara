// sample js to connect to a mysql database
// perform a query and then show the result
const mysql = require ('mysql');
require ('dotenv').config ();

const db = mysql.createConnection ({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: 'lara_database',
  connectionLimit: 5
});

db.connect ((err) => {
  if (err)
    throw err;
  console.log ('connected');

  var sql = 'select * from professor';
  db.query (sql, (err, res) => {
    if (err)
      throw err;

    console.log (res);
  });
});
