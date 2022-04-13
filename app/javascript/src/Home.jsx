import React from 'react';
import { Link } from "react-router-dom";

const Layout = () => {
  return (
    <>
      <Link to="/films">Films</Link>
      <Link to="/people">People</Link>
      <Link to="/planets">Planets</Link>
      <Link to="/species">Species</Link>
      <Link to="/starships">Starships</Link>
      <Link to="/vehicles">Vehicles</Link>
    </>
  );
};

export default Layout;
