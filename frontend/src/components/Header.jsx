import React from "react";
import { MdAccountCircle } from "react-icons/md";
import SamuraiLogo from "../assets/SamuraiLogo.png";

function Header() {
  return (
    <div>
      <img className="SamuraiLogo" src={SamuraiLogo} alt="SamuraiLogo" />
      <h1>Header</h1>
      <button type="button" className="button-connexion">
        <MdAccountCircle className="account-icon" />
      </button>
    </div>
  );
}

export default Header;
