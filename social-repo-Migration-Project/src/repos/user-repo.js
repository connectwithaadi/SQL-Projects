const pool = require('../pool');

function toCamelCase(obj) {
  if (!obj) return obj;

  return Object.keys(obj).reduce((result, key) => {
    const camelKey = key.replace(/_([a-z])/g, (_, letter) =>
      letter.toUpperCase()
    );

    result[camelKey] = obj[key];

    return result;
  }, {});
}

class UserRepo {
  static async find() {
    const { rows } = await pool.query('SELECT * FROM users;');

    return rows.map(toCamelCase);
  }

  static async findById(id) {
    const { rows } = await pool.query(
      `
      SELECT * FROM users WHERE id = $1;
      `,
      [id]
    );

    return toCamelCase(rows[0]);
  }

  static async insert(username, bio) {
    const { rows } = await pool.query(
      `
      INSERT INTO users (username, bio)
      VALUES ($1, $2)
      RETURNING *;
      `,
      [username, bio]
    );

    return toCamelCase(rows[0]);
  }

  static async update(id, username, bio) {
    const {
      rows,
    } = await pool.query(
      'UPDATE users SET username = $1, bio = $2 WHERE id = $3 RETURNING *;',
      [username, bio, id]
    );

    return toCamelCase(rows)[0];
  }

  static async delete(id) {
    const {
      rows,
    } = await pool.query('DELETE FROM users WHERE id = $1 RETURNING *;', [id]);

    return toCamelCase(rows)[0];
  }
}

module.exports = UserRepo;