import React, { createContext, useContext, useState } from 'react';

const DataContext = createContext({data: {}, actions: {}});

export const useData = () => {
  return useContext(DataContext);
};

const DataProvider = ({ children }) => {
  const [data, setData] = useState([]);

  const fetchData = (url) => {
    fetch(url)
      .then(response => response.json())
      .then(body => {
        if (body.results &&Array.isArray(body.results)) {
          setData(body.results);
        } else {
          setData([body]);
        }
      });
  };
  
  const value = {
    data,
    actions: { fetchData },
  };
  
  return (
    <DataContext.Provider value={value}>
      {children}
    </ DataContext.Provider>
  )
};

export default DataProvider;