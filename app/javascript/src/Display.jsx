import React, { useEffect, useState } from 'react';
import Item from './Item';
import { useData } from './context/DataContext';

const Display = () => {
  const [loading, setLoading] = useState(true);
  const { data, actions: {setData} } = useData();
  
  useEffect(() => {

    fetch('https://swapi.dev/api/')
      .then(response => response.json())
      .then(body => {
        setData(body);
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
