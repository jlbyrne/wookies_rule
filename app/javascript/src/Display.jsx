import React, { useEffect, useState } from 'react';
import Item from './Item';
import { useData } from './context/DataContext';

const Display = ({endpoint}) => {
  const [loading, setLoading] = useState(true);
  const { data, actions: {setData} } = useData();
  
  useEffect(() => {
    fetch(`/api/${endpoint}`)
      .then(response => response.json())
      .then(body => {
        setData(body.results);
        setLoading(false);
      });
  }, [])


  if (loading) {
    return (<div>Loading...</div>);
  } else {
    return (
      <ul>
        {data.map(item => <li key={item.url}><Item data={item} /></li>)}
      </ul>
    );
  }
};

export default Display;
