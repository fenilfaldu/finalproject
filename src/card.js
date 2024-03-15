import React from 'react'
// import { useParams } from 'react-router-dom'
export default function Card({img}) {
  return (
    <div style={{height:"50vw",width:"auto",paddingTop:"50px"}}>
        <img style={{height:"100%"}} src={img} alt=''/>
    </div>
  )
}
