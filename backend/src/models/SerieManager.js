const AbstractManager = require("./AbstractManager");

class SerieManager extends AbstractManager {
  constructor() {
    super({ table: "serie" });
  }
}

module.exports = SerieManager;
