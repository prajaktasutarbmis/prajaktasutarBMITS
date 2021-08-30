//There are 7 types of primitive data type.
//1.Number data type:Used to store number,numbers can be integer,float,hexadecimal,octadecimal,etc.
// * store integer value
let number1=10;
document.write("Your value is "+ number1 +"<br>");
document.write("Type of "+number1+" is "+typeof number1+"<br>");
// * store decimal value
let number2=10.10;
document.write("Your value is "+ number2 +"<br>");
document.write("Type of "+number2+" is "+typeof number2+"<br>");
// * store hexadecimal value
let number3=0x0A;
document.write("Your value is "+ number3 +"<br>");
document.write("Type of "+number3+" is "+typeof number3+"<br>");
// * store octal value
let number4=012;
document.write("Your value is "+ number4 +"<br>");
document.write("Type of "+number4+" is "+typeof number4+"<br><br>");

//2.String data type:Used to store sequence of characters
let favouriteLine="India is my country";
document.write(favouriteLine+" and I love it<br>");
document.write("Type of "+favouriteLine+" is "+typeof favouriteLine+"<br><br>");

//3.Boolean data type:Stores two values,that are true and false
let rollnumber=true;
if(rollnumber)
    document.write("Rollnumber is present<br>");
else
    document.write("Rollnumber is absent<br>");
document.write("Value stored in rollnumber is of "+typeof rollnumber+" type<br><br>");

//4.Undefined data type:variable with empty value.
let temporary;
document.write("Your value is "+ temporary +"<br>");
document.write("Type of "+temporary+" value is "+typeof temporary+"<br><br>");

//5.Null data type:varible with null value
let secondTemporary=null;
document.write("Your value is "+ secondTemporary +"<br>");
document.write("Type of "+secondTemporary+" value is "+typeof secondTemporary+"<br><br>");

//6.Symbol data type:Value is unique.
const symbol1=Symbol("India");
console.log("Symbol is ",symbol1);
console.log(symbol1.description);
console.log("Type of ",symbol1," is "+typeof symbol1);

//7.BigInt data type:to store larger integer.
let thirdTemporary=BigInt(10);
document.write("The value is"+thirdTemporary+"<br>");
document.write("Type of "+thirdTemporary+" is "+typeof thirdTemporary+"<br><br>");

//Dynamic typing
let age="Twenty";
document.write("Type of "+age +" is "+typeof age);
age=20;
document.write("<br>Type of "+age +" is "+typeof age+"<br><br>");

//== and === operator
document.write(1=="1");
document.write("<br>");
document.write(1==="1");
document.write("<br><br>");

//type convertion
let year=1950;
//convert number to string
document.write(typeof year+"<br>");
document.write(typeof String(year)+"<br>"); 
let day="31";
document.write(typeof day+"<br>");
//convert string to number
document.write(typeof Number(day)+"<br>");
document.write(Number(day)-10+"<br>");

//NaN:Not a Number.
let fourthTemporary="hello";
document.write(Number(fourthTemporary)+"<br>");
document.write(typeof Number(fourthTemporary));