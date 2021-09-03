import React,{useState} from 'react';
import ExpenseDate from './ExpenseDate';
import './ExpenseItem.css';
import Card from './Card';

function ExpenseItem(props){
    //const expenseDate=new Date(2021,2,28);
    //const expenseTitle='car insurance';
    //const expenseAmount=254.78;
    const [title,setTitle]=useState(props.title);

    const clickHandler=()=>{
        setTitle('phone');
        console.log('clicked');
    }
    return(
        <Card className="expense-item">
            <ExpenseDate date={props.date}></ExpenseDate>
            <div className="expense-item__description">
                <h2>{title}</h2>
                <div className="expense-item__price">${props.amount}</div>
            </div>
            <button onClick={clickHandler}>Change Title</button>
        </Card>
    );
}

export default ExpenseItem;