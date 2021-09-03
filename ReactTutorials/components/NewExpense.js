import React from 'react';
import './NewExpense.css';
import ExpenseForm from './ExpenseForm';
const NewExpense=(props)=>{
    //get data from ExpenseForm
    const saveExpenseDataHandler=(enteredExpenseData)=>{
        //create a object of data with id
        const expenseData={
            ...enteredExpenseData,id:Math.random().toString()
        };
        //pass data to app.js ie. to parent component
        props.onAddExpense(expenseData);
    }
    return <div className="new-expense">
        <ExpenseForm onSaveExpenseData={saveExpenseDataHandler}/> 
    </div>
};
export default NewExpense;