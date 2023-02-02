const AbstractManager = require("./AbstractManager");

class EpisodeUserManager extends AbstractManager {
  constructor() {
    super({ table: "episode_user" });
  }
}

module.exports = EpisodeUserManager;
