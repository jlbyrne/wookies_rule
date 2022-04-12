import React, { useEffect, useState } from 'react';
import Item from './Item';

const Display = () => {
  const [loading, setLoading] = useState(true);
  const [data, setData] = useState({});
  
  useEffect(() => {
    fetch('https://swapi.dev/api/')
      .then(response => response.json())
      .then(data => {
        setData(data);
        setLoading(false);
      });
  }, [])


  if (loading) {
    return (<div>Loading...</div>);
  } else {
    return (
      <ul>
        {Object.keys(data).map(key => <li key={key}><Item heading={key} value={data[key]} /></li>)}
      </ul>
    );
  }
};

export default Display;
