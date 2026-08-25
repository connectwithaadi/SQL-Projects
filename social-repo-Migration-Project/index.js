const app = require('./src/app.js');
const pool = require('./src/pool.js');

pool
  .create({
    host: 'localhost',
    port: 5432,
    database: 'socialnetwork',
    user: 'postgres',
    password: 'Aadi.1234singh',
  })
  .then(() => {
    app().listen(3005, () => {
      console.log('Listening on port 3005');
    });
  })
  .catch((err) => {
    console.error('Database connection failed:', err);
  });