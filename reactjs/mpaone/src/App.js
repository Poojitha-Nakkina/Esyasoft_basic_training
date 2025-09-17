
import React, { useState } from 'react';
import EventComponent from './components/eventComponent';
import LoginComp from './components/loginComp';


function App() {

  //const [counter,setCounter]=useState(0);

 // const incrementHandler=()=>{
  //  setCounter(counter+1);
 // }
  //const decrementHandler=()=>{
   // setCounter(counter-1);
 // } 
  return (
    <div >{/*
     <div>{counter}</div>
     <button onClick={incrementHandler}>increment</button>
      <button onClick={decrementHandler}>decrement</button>
    */}
    {/* <EventComponent /> */}
    <LoginComp />

    </div>
  );
}

export default App;
