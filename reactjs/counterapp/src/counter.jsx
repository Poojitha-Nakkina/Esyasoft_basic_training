function Counter(){
    let count=0;
    console.log(x);
    var x=5;
    let b=10;
    const c=15;
    console.log(b);
    console.log(c);
const add=(a,b)=> a+b;

console.log(add(5,20));
 /* assignment -> write counter function as implicit one*/
 /* Arrow functions and lexical this */

 const obj ={
    value : 10,
    function1(){
        console.log(this.value);
    }
 }

/* Object destructuring - extracting props */
 const user={
  
    info : {
       
        address : 'abc',
        state : 'xyz'
    }
}
    const {name : userName='Pooji', info : {address, state}}=user;

    console.log(userName);
    console.log(address);
    console.log(state);

   /*swapping */ 
    let a=1; 
    let p=2;
    [a,p]=[p,a];
    console.log(a);
    console.log(p);

    /* spread operator '...'*/
    const arr1={name : 'abc' , age :'20'};
    const arr2 = {...arr1, age:'25'};
    console.log(arr2.name);
    console.log(arr2.age);

    const increment=()=>{
        count++;
        document.getElementById("c1").innerText=count;
    }
    const decrement=()=>{
        count--;
        document.getElementById("c1").innerText=count;
    }
    return (<div>
        <h1 id="c1">0</h1>
        <button onClick={increment}>INC</button>
        <button onClick={decrement}>DEC</button>
        </div>
    )
}

export default Counter;