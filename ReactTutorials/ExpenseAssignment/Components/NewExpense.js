import React,{useState} from 'react';
import './NewExpense.css';
import ExpenseForm from './ExpenseForm';
const NewExpense=(props)=>{
    const[isEditing,setIsEditing]=useState(false);
    //get data from ExpenseForm
    const saveExpenseDataHandler=(enteredExpenseData)=>{
        //create a object of data with id
        const expenseData={
            ...enteredExpenseData,id:Math.random().toString()
        };
        //pass data to app.js ie. to parent component
        props.onAddExpense(expenseData);
        setIsEditing(false);
    }

    const startEditingHandler=()=>{
        setIsEditing(true)
    }
    
    const stopEditingHandler=()=>{
        setIsEditing(false);
    }
    return <div className="new-expense">
        {!isEditing &&<button onClick={startEditingHandler}>Add New Expense</button>}
        {isEditing && <ExpenseForm onSaveExpenseData={saveExpenseDataHandler} onCancel={stopEditingHandler}/>} 
    </div>
};
export default NewExpense;