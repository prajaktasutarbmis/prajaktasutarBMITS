//function declaration
function print()
{
    return 'India is my country<br><br>';
}
document.write(print());//invoking function orcalling function

//parameter passing to function
document.write(add(10,10)+'<br>');
function add(a,b)
{
    return(a+b);
}
document.write(add('good',' morning')+'<br>');
document.write(add(10.34,60.34)+'<br>');
document.write(add(true,true)+'<br>');
document.write(add(10,67.60)+'<br>');
document.write(add(100,' rs she received')+'<br>');
document.write(add('Percentage of Rehan is',75.69)+'<br><br>');

//recursive function
function factorial(n)
{
    if(n==0 || n==1)
    { 
        return 1;
    }
    else
    {
      return n*factorial(n-1);
    }
}
document.write('Factorial of a number is '+factorial(4)+'<br><br>');

//function expression
//age is the variable
let age=function(birthYear,currentYear){
    return currentYear-birthYear;
}
document.write("Your age is "+age(1998,2021));
age="<br>GOOD MORNING";
document.write(age+'<br><br>');

//Arrow function
const message=name=>'Good Morning '+name;
document.write(message('Sarah')+'<br>');

//Arrow function with return 
const maxValue=(a,b)=>{
    if(a>b)
        return a;
    else
        return b;
}
document.write("max value="+maxValue(5,7)+'<br><br>');

//calling function from another function
function getPercentage(){
    let totalMarks=getTotalMarks(86,90,67);
    let Percentage=(totalMarks/300)*100;
    document.write("Percentage="+Percentage);
}
function getTotalMarks(maths,english,science){
    return maths+english+science;
}
getPercentage();