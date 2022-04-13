import React, { createContext, useContext, useState } from 'react';

const DataContext = createContext({data: {}, actions: {}});

export const useData = () => {
  return useContext(DataContext);
};

const DataProvider = ({ children }) => {
  const [data, setData] = useState({});
  
  const value = {
    data,
    actions: { setData },
  };
  
  return (
    <DataContext.Provider value={value}>
      {children}
    </ DataContext.Provider>
  )
};

export default DataProvider;