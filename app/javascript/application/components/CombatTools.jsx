import React, { useContext } from 'react'
import DispatchContext from '../contexts/DispatchContext';

const CombatTools = (props) => {  
  const dispatch = useContext(DispatchContext);
  const nextTurn = () =>{
    return dispatch({
      action: "nextInitiative"
      
    });
  } 
  

  return (
    <>
    <button onClick={() => nextTurn()} className="btn btn-primary" >Next Turn</button>
    </>
  )
}

export default CombatTools