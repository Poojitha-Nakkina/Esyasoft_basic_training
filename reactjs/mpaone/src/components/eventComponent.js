function EventComponent(){

  const onChangeHandler = (e)=>{
      
      if(e.target.value == 'Pooji'){
          console.log("yep that's me");
      }
      else{
        console.log("Nah Nah")
      }
  }

    return (
        <>
        Welcome to Events
        <button onClick={() => {
            console.log("button clicked")
        }} >click me </button>

        <div style={{backgroundColor: "blanchedalmond" , padding: "20px" , border: "50px",margin:"100px"}}>
            this is div
        </div>

        <button onDoubleClick={()=>{
            console.log("hey u clicked me twice")
        }} style={{backgroundColor: "ButtonFace",margin: "50px"}} >YO YO</button>


        <input type="text" onChange={onChangeHandler}   />
        </>
    )

}

export default EventComponent