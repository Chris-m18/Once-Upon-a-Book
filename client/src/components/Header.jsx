import React from 'react'
import { Link } from "react-router-dom"
import './header.css'

export default function Header() {
  return (<>
    <div className="header">
    <header>Once Upon a Book </header>
    </div>
    <div className='link'>
    <Link to='/auth/login'>
        Login/Register
    </Link>
      </div>
      </>
  )
}
