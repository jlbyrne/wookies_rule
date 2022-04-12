// Entry point for the build script in your package.json
import * as React from 'react';
import * as ReactDOM from 'react-dom/client';
import Display from './src/Display';

const App = () => {
  return (
    <Display />
  );
}

document.addEventListener('DOMContentLoaded', () => {
  const root = ReactDOM.createRoot(document.getElementById('app'));
  root.render(<App />);
})