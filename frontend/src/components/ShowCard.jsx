import React from "react";
import SampleCard from "./sampleCard";
import "../styles/showCard.scss";

function ShowCard({ show }) {
  return (
    <div className="show-card">
      <img src={show.img} className="show-card-img" alt="Img" />
      <div className="show-card-text">
        <p className="show-card-id">{show.id}</p>
        <h3 className="show-card-title">{show.title}</h3>
        <p className="show-card-genre">{show.genre}</p>
        <p className="show-card-year">{show.year}</p>
        <p className="show-card-description">{show.description}</p>
        <p className="show-card-seasons">
          Seasons: {show.season} Episodes: {show.episodes}
        </p>
      </div>
    </div>
  );
}

ShowCard.defaultProps = {
  show: [],
};

ShowCard.propTypes = {
  show: SampleCard,
};

export default ShowCard;
