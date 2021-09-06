import React,{useState} from "react";
import Expenses from "./components/Expenses";
import NewExpense from "./components/NewExpense";
const DUMMY_EXPENSES =[
  {id:'e1' ,title:'car insurance',amount:254.78,date:new Date(2021,2,25)},
  {id:'e2',title:'new TV',amount:345.90,date:new Date(2021,8,21)},
  {id:'e3',title:'Toilet paper',amount:98.23,date:new Date(2021,5,23)}
];
function App() {
  const [expenses,setExpenses]=useState(DUMMY_EXPENSES);
  
  //get data from NewExpense component
  const addExpenseHandler=(expense)=>{
    //setExpenses([expense,...initial_Expenses])->This is not correct way to get new expense,so need to pass function to setExpenses,to receive latest state
    setExpenses((prevExpenses)=>{
      return [expense, ...prevExpenses];
    });
  }
  return (
    <div>
      <NewExpense onAddExpense={addExpenseHandler}/>
      <Expenses items={expenses} ></Expenses>
    </div>
  );
}

export default App;
