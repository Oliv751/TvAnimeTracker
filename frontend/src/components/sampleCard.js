import PropTypes from "prop-types";

const SampleCard = PropTypes.shape({
  id: PropTypes.number.isRequired,
  title: PropTypes.string.isRequired,
  genre: PropTypes.string.isRequired,
  year: PropTypes.number.isRequired,
  description: PropTypes.string.isRequired,
  img: PropTypes.shape({ url: PropTypes.string }),
}).isRequired;

export default SampleCard;
