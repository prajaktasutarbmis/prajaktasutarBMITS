import React,{useState} from 'react';
import PortalDemo from './components/UI/PortalDemo';
import AddUser from './components/Users/AddUser';
import UsersList from './components/Users/UsersList';

function App() {
  const [usersList,setUsersList]=useState([]);
  const addUserHandler=(uName,uAge)=>{
    setUsersList((prevUsersList)=>{
      return [...prevUsersList,{name:uName , age:uAge , id:Math.random().toString() }];
    });
  } 
  return (
    //creating a fragments
    <React.Fragment>
      <PortalDemo></PortalDemo>
      <AddUser onAddUser={addUserHandler}></AddUser>
      <UsersList users={usersList}></UsersList>
      
    </React.Fragment>
  );
}

export default App;
