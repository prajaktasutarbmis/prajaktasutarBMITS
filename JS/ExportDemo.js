//Named export class
class Demo{
    show(){
        console.log('You are in Demo class');
    }
}
export {Demo};

//Named export function
export function fun()
{
    console.log('You are in fun() function');
}

//Named Export variable
let age=22;
export {age};

//Default Export class
export default class Calculate{
    add()
    {
        return 2+3;
    }
}

