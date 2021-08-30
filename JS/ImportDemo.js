//Named import
import {Demo,fun,age} from "./ExportDemo.js";
var ob=new Demo();
ob.show();
fun();
console.log('Your age is '+age);

//Default import
import Calculate from "./ExportDemo.js";
var ob2=new Calculate();
var answer=ob2.add();
console.log('Addition='+answer);
