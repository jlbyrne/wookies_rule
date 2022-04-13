import React, { useContext } from 'react';
import { useData } from './context/DataContext';

const Item = ({text, url}) => {
  const {actions: {setData}} = useData();

  const refreshData = () => {
    fetch(url)
      .then(response => response.json())
      .then(body => {
        console.log(body)
        setData(body);
      });
  };

  return (
    <div>
      <button onClick={refreshData}>{text}</button>
    </div>
  );
};

export default Item;
