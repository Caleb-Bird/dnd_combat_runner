import React, { Component } from 'react'

const CombatTools = (props) => {
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