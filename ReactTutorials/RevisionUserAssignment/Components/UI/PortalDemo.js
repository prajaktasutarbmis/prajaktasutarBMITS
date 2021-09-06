import ReactDOM from 'react-dom';
function PortalDemo(){
    //create a portal
    return (
        ReactDOM.createPortal(<h1>Portal Elements</h1>,document.getElementById('portal-root')));
    }
export default PortalDemo;