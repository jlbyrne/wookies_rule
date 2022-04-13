import React, { useContext } from 'react';
import { useData } from './context/DataContext';

const Item = ({text, url}) => {
  const {actions: {fetchData}} = useData();

  const refreshData = () => {
    const path = new URL(url).pathname;
    fetchData(path);
  };

  return (
    <div className="link-button">
      <button onClick={refreshData}>{text}</button>
    </div>
  );
};

export default Item;
