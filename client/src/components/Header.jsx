import React from 'react'
import { Link } from "react-router-dom"
import './header.css'

export default function Header() {
  return (<>
    <div className="header">
      
      <Link className='head' to = '/' > 
    <header>Once Upon a Book </header>
      </Link>
    </div>
    <div className='link'>
    <div className='Login'>
    <Link className='log'  to='/login'>
          Login/Register
    </Link>
    </div>
      <Link className='cat' to='/category'>
        Category
    </Link>
      <Link className='add' to='/add'>
        Submit your book
      </Link>
      </div>
      </>
  )
}
