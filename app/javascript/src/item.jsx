import React, { useEffect, useState } from 'react';
import LinkButton from './LinkButton';

const Item = ({data}) => {
  console.log(data)
  const isUrl = (str) => {
    try {
      new URL(str);
      return true;
    } catch (error) {
      return false;  
    }
  };

  const textOrLink = (key) => {
    if (data[key] && isUrl(data[key])) {
      return <LinkButton url={data[key]} text={key}/>
    } else {
      return (
        <div>
          {key}: {data[key]}
        </div>
      );
    }
  };

  return (
    <div>
      <ul>
        {Object.keys(data).map(key => <li key={key}>{textOrLink(key)}</li>)}
      </ul>
    </div>
  )
};

export default Item;
