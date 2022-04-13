import React, { useEffect, useState } from 'react';
import { Routes, Route } from "react-router-dom";
import Display from './Display';
import Home from './Home';

const Layout = () => {
  return (
    <>
      <h1>Placeholder Heading</h1>
      <Routes>
        <Route path="/" element={<Home />}/>
        <Route path="/films" element={<Display endpoint='films' />}/>
        <Route path="/people" element={<Display endpoint='people' />}/>
        <Route path="/species" element={<Display endpoint='species' />}/>
        <Route path="/planets" element={<Display endpoint='planets' />}/>
        <Route path="/starships" element={<Display endpoint='starships' />}/>
        <Route path="/vehicles" element={<Display endpoint='vehicles' />}/>
      </Routes>
    </>
  );
};

export default Layout;
