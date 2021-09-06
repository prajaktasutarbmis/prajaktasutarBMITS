import React,{useState} from 'react';
import Card from '../UI/Card';
import Button from '../UI/Button';
import classes from './AddUser.module.css';
import ModelError from '../UI/ModelError';
const AddUser = props=>{
    const [enteredUsername,setEnteredUsername]=useState('');
    const [enteredAge,setEnteredAge]=useState('');
    const [error,setError]=useState();    
    const addUserHandler=(event)=>{
        event.preventDefault();
        if(enteredUsername.trim().length===0 || enteredAge.trim().length===0){
            setError({title:'Invalid input' , message :'Please enter a valid name age empty'})
            return;
        }
        if(+enteredAge<1){
            setError({age: 'Invalid input', message:'Please enter a valid age'});
            return
        }
        props.onAddUser(enteredUsername,enteredAge);
        setEnteredUsername('');
        setEnteredAge('');
    }
    const usernameChangeHandler=(event)=>{
        setEnteredUsername(event.target.value);
    }
    const ageChangeHandler=(event)=>{
        setEnteredAge(event.target.value);
    }

    const errorHandler=()=>{
        setError(null);
    };
    return(
        <div>
            {error && <ModelError title={error.title} message={error.message} onConfirm={errorHandler}></ModelError>}
            <Card className={classes.input}> 
            <form onSubmit={addUserHandler}>
                <label htmlFor="username">Username</label>
                <input type="text" id="username" value={enteredUsername} onChange={usernameChangeHandler}></input>
                <label htmlFor="age">Age(Years)</label>
                <input type="text" id="age" value={enteredAge} onChange={ageChangeHandler}></input>
                <Button type="submit">Add User</Button>
            </form>
        </Card> 
       </div>
    )
}
export default AddUser;