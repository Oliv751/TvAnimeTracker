const AbstractManager = require("./AbstractManager");

class EpisodeManager extends AbstractManager {
  constructor() {
    super({ table: "episode" });
  }
}

module.exports = EpisodeManager;
