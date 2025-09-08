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


    /* swapping */

    let a=1, b=2;
    [a,b]=[b,a];
    console.log(a);
    console.log(b);
