
import React, { useState } from 'react';
import { StyleSheet,View, Button, TextInput, Text, ScrollView } from 'react-native';
function App() {
  const [enteredGoal,setEnteredGoal]=useState('');
  const [goals,setGoals]=useState([]);
  const goalInputHandler=(enteredText)=>{
    setEnteredGoal(enteredText);
    value={enteredGoal}
  }

  const addGoalHandler=()=>{
    setGoals(currentGoal=>{return [...goals,enteredGoal]});
  }
  
  return ( 
    <View style={styles.root}>
      <View style={styles.firstContainerStyle}>
        <TextInput placeholder="Enter goal" style={styles.inputTextStyle} onChangeText={goalInputHandler} />
        <Button title="click" onPress={addGoalHandler} />
      </View>
      <ScrollView>
        {goals.map((goal)=><View key={goal} style={styles.lists}><Text>{goal}</Text></View>)}
      </ScrollView>
    </View> 
  );
}
const styles = StyleSheet.create({
  root: {
    padding: 70
  },
  lists: {
    padding:10,
    margin:10,
    backgroundColor:'#ccc',
    borderColor:'black',
    borderWidth:1
    
  },
  firstContainerStyle: {
    flexDirection: 'row',
    justifyContent: 'space-around',
    alignItems: 'center'
  },
  inputTextStyle:{ 
    width: 150,
    borderBottomColor: 'black',
    borderWidth: 1 
  }

});
export default App;
