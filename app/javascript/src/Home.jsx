import React from 'react';
import { Link } from "react-router-dom";

const Layout = () => {
  return (
    <>
      <Link className="nav-link" to="/films">Films</Link>
      <Link className="nav-link" to="/people">People</Link>
      <Link className="nav-link" to="/planets">Planets</Link>
      <Link className="nav-link" to="/species">Species</Link>
      <Link className="nav-link" to="/starships">Starships</Link>
      <Link className="nav-link" to="/vehicles">Vehicles</Link>
    </>
  );
};

export default Layout;
