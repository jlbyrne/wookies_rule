// Entry point for the build script in your package.json
import * as React from 'react';
import * as ReactDOM from 'react-dom/client';
import { BrowserRouter } from "react-router-dom";
import DataProvider from './src/context/DataContext';
import Layout from './src/Layout';

const App = () => {
  return (
    <BrowserRouter>
      <DataProvider>
        <Layout />
      </DataProvider>
    </BrowserRouter>
  );
}

document.addEventListener('DOMContentLoaded', () => {
  const root = ReactDOM.createRoot(document.getElementById('app'));
  root.render(<App />);
})