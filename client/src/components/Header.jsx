import React from 'react'
import { Link } from "react-router-dom"
import './header.css'

export default function Header() {
  return (<>
    <div className="header">
      
      <Link to = '/' > 
    <header>Once Upon a Book </header>
      </Link>
    </div>
    <div className='link'>
    <din className='login'>
    <Link  to='/login'>
          Login/Register
    </Link>
    </din>
      <Link to='/category'>
        Category
    </Link>
      <Link to='/add'>
        Submit your book
      </Link>
      </div>
      </>
  )
}
