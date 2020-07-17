import React, { Component } from 'react'
import SimpleSlider from './SimpleSlider'
import { Link } from 'react-router-dom';
import './main.css'


export default class Main extends Component {

  render() {
 
    return (
      <div>
        <SimpleSlider/>
        <h3>Your Children's Favorites</h3>

{this.props.books && this.props.books.slice(0, 20).map(
         book => ( 
         
    <div className='book' >
     
      <Link to={`/books/${book.id}`}>
      <img className="pic" src={book.img_url} /> 
      </Link>
          </div>  
         )
        
        )}  
     
 </div>
    

    )
  }
}
