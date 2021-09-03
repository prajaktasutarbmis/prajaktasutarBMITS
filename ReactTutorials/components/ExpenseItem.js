import React from 'react';
import ExpenseDate from './ExpenseDate';
import './ExpenseItem.css';
import Card from './Card';

function ExpenseItem(props){
    //const expenseDate=new Date(2021,2,28);
    //const expenseTitle='car insurance';
    //const expenseAmount=254.78;
   
   
    return(
        <Card className="expense-item">
            <ExpenseDate date={props.date}></ExpenseDate>
            <div className="expense-item__description">
                <h2>{props.title}</h2>
                <div className="expense-item__price">${props.amount}</div>
            </div>
        </Card>
    );
}

export default ExpenseItem;