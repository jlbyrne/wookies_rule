import React, { useState, useEffect } from 'react';
import Item from './Item';
import { useData } from './context/DataContext';

const Display = ({endpoint}) => {
  const { data, actions: {fetchData} } = useData();
  const [displayData, setDisplayData] = useState();
  
  useEffect(() => {
    fetchData(`/api/${endpoint}`)
  }, [])

  useEffect(() => {
    setDisplayData(data);
  }, [data, setDisplayData])


  if (displayData && Object.keys(displayData).length > 0) {
    return (
      <div className='main'>
        {displayData.map(item => <Item key={item.url} data={item} />)}
      </div>
    );
  } else {
    return (<div>Loading...</div>);
  }
};

export default Display;
