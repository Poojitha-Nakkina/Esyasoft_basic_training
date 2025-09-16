
import React, { useState } from 'react';

function App() {

  const [counter,setCounter]=useState(0);

  const incrementHandler=()=>{
    setCounter(counter+1);
  }
  const decrementHandler=()=>{
    setCounter(counter-1);
  }
  return (
    <div >
     <div>{counter}</div>
     <button onClick={incrementHandler}>increment</button>
      <button onClick={decrementHandler}>decrement</button>

    </div>
  );
}

export default App;
