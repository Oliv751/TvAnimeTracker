const AbstractManager = require("./AbstractManager");

class SerieManager extends AbstractManager {
  constructor() {
    super({ table: "serie" });
  }

  insert(serie) {
    return this.connection.query(
      `insert into ${this.table} (img, title, genre, year, description) values (?, ?, ?, ?, ?)`,
      [serie.img, serie.title, serie.genre, serie.year, serie.description]
    );
  }

  update(serie) {
    return this.connection.query(
      `update ${this.table} set img = ?, title = ?, genre = ?, year = ?, description = ? where id = ?`,
      [
        serie.img,
        serie.title,
        serie.genre,
        serie.year,
        serie.description,
        serie.id,
      ]
    );
  }
}

module.exports = SerieManager;
