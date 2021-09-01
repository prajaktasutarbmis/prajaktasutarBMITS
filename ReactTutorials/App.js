import Expenses from "./components/Expenses";
function App() {
  const expenses =[
    {id:'e1' ,title:'car insurance',amount:254.78,date:new Date(2021,2,25)},
    {id:'e2',title:'new TV',amount:345.90,date:new Date(2021,8,21)},
    {id:'e3',title:'Toilet paper',amount:98.23,date:new Date(2021,5,23)}
  ];
  return (
    <div>
      <Expenses expenses={expenses}></Expenses>
    </div>
  );
}

export default App;
