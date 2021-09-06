import React,{useState} from "react";
import ExpenseItem from "./ExpenseItem";
import './Expenses.css';
import Card from "./Card";
import ExpenseFilter from "./ExpenseFilter";
import ExpensesChart from "./ExpensesChart";
import ExpensesList from "./ExpensesList";
 function Expenses(props)
{
    const [filteredYear,setFilteredYear]=useState('2019');
    const filterChangeHandler=(selectedYear)=>{
       setFilteredYear(selectedYear);
    } 

    const filteredExpenses=props.items.filter(expense=>{
        return expense.date.getFullYear().toString() ===filteredYear;
    });

        return (
        <div>
            <Card className="expenses">
                <ExpenseFilter selected={filteredYear} onChangeFilter={filterChangeHandler}/>
                <ExpensesChart expenses={filteredExpenses} />
                <ExpensesList items={filteredExpenses}/>
            </Card>
    </div>);
}
export default Expenses;