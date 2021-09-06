import './Chart.css';
import ChartBar from './ChartBar';
const Chart = props =>{
    //transform object to array of numbers
    const dataPointValues=props.dataPoints.map(dataPoint=>dataPoint.value);
    //find maximum value
    const totalMaximum=Math.max(...dataPointValues);
    return <div className='chart'>
        {props.dataPoints.map(dataPoint => <ChartBar key={dataPoint.label} value={dataPoint.value} maxValue={totalMaximum} label={dataPoint.label}/>)}
    </div>
}
export default Chart;