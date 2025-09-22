import React, { useRef } from 'react'

export default function UserRefcomp() {
    const ref = useRef(null);
    const buttonHandler = ()=>{
        ref.current.focus();
    }
  return (
    <div>
      <input ref={ref}/>
      <button onClick={buttonHandler}>focus</button>
    </div>
  )
}
