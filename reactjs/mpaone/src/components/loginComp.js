import { useState } from "react"
function LoginComp() {

    const [username,setUsername]=  useState("")
    const [password,setPassword] = useState("")
  const onLoginHandler =()=>{
    if(username !== "username"){
        alert("Invalid username")
        return;
    }
    if(password !== "password"){
        alert("Invalid password")
        return;
    }
    alert("login button clicked")
  }


    return (
        <>
        <input type='text' value = {username} onChange={(e)=> {setUsername(e.target.value)}} placeholder='Enter your name' />
        <input type='password' value = {password} onChange={(e)=>{setPassword(e.target.value)}} placeholder='Enter your Password' />
        <button onClick={onLoginHandler}>Login</button>
        
        </>
    )
}

export default LoginComp;