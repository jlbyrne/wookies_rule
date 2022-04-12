import React, { useEffect, useState } from 'react';
import LinkButton from './LinkButton';

const Item = ({heading, value}) => {
  
  const isUrl = (str) => {
    try {
      new URL(str);
      return true;
    } catch (error) {
      // logging errors to the console here in place of a proper logging system
      console.log(error);
      return false;  
    }
  }

  if (value && isUrl(value)) {
    return <LinkButton url={value} text={heading}/>
  } else {
    return (
      <div>
        {heading}: {value}
      </div>
    );
  }
};

export default Item;
