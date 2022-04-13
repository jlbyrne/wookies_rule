import React, { useEffect, useState } from 'react';
import { Routes, Route, Link } from "react-router-dom";
import Display from './Display';

const Layout = () => {
  return (
    <>
      <h1>Placeholder Heading</h1>
      <Routes>
        <Route path="/" element={<Display />}/>
      </Routes>
    </>
  );
};

export default Layout;
