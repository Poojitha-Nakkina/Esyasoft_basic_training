import { type } from '@testing-library/user-event/dist/type';
import React, { useState } from 'react'

export default function Component1() {

 const[loginstate,setLoginstate]= useState({
    username : "",
    password : ""
 });

 const onUsernamechangeHandler = (event)=> {
                setLoginstate({
                    ...loginstate,
                    username :event.target.value
                })
 }

 const onPasswordHandler =(event)=> {
                setLoginstate({
                    ...loginstate,
                    password :event.target.value
                })
 }

const loginHandler = (event)=>{
    event.preventDefault()
  console.log(event)
}

  return (
    <div>
      Heyy Hii


      <form onSubmit={loginHandler}>
        <br />
        <input   type='text' value={loginstate.username}  onChange={onUsernamechangeHandler}/>
        <br />
        <input value={loginstate.password} onChange={onPasswordHandler} type='password'/>
        <br />
        <button type='submit'>Login</button>
      </form>
    </div>
  )
}
