import React, { useEffect, useState } from 'react';
import LinkButton from './LinkButton';

const Item = ({data}) => {
  const isUrl = (str) => {
    try {
      new URL(str);
      return true;
    } catch (error) {
      return false;  
    }
  };

  const textOrLink = (key) => {
    // normally I would not be so trusting of data structures, but I'm trying not to
    // go too far outside the time expectations you gave me
    if (Array.isArray(data[key])) {
      return (
        <div className='entry'>
          <div className="category">{key}: </div>
          {data[key].map(url => <LinkButton key={url} url={url} text={url}/>)}
        </div>
      )
    } else if (data[key] && isUrl(data[key])) {
      return <LinkButton key={data[key]} url={data[key]} text={key}/>
    } else {
      return (
        <div key={key} className="entry">
          <div className="category">{key}: </div>
          <div className='data'>{data[key]}</div>
        </div>
      );
    }
  };

  return (
    <div className='item-box'>
      <div>
        {Object.keys(data).map(key => textOrLink(key))}
      </div>
    </div>
  )
};

export default Item;
