import React,{useState} from "react";
import ExpenseItem from "./ExpenseItem";
import './Expenses.css';
import Card from "./Card";
import ExpenseFilter from "./ExpenseFilter"
 function Expenses(props)
{
    const [filteredYear,setFilteredYear]=useState('2019');
    const filterChangeHandler=(selectedYear)=>{
       setFilteredYear(selectedYear);
    } 
    return (
        <div>
            
            <Card className="expenses">
                <ExpenseFilter selected={filteredYear} onChangeFilter={filterChangeHandler}/>
            
                <ExpenseItem title={props.expenses[0].title} amount={props.expenses[0].amount} date={props.expenses[0].date}></ExpenseItem>
                <ExpenseItem title={props.expenses[1].title} amount={props.expenses[1].amount} date={props.expenses[1].date}></ExpenseItem>
                <ExpenseItem title={props.expenses[2].title} amount={props.expenses[2].amount} date={props.expenses[2].date}></ExpenseItem>
            </Card>
    </div>);
}
export default Expenses;