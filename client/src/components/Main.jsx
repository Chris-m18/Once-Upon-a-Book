import React, { Component } from 'react'
import SimpleSlider from './SimpleSlider'
import { Link, Route } from 'react-router-dom';
import Books from './Books'
import Add from './Add'
import Category from './Category'
import Login from './Login'

import './main.css'
import ShowAll from './ShowAll';


export default class Main extends Component {

  componentDidMount = async () => {
  
  }


  render() {
    console.log(this.props.books)
    return (
      <div>


        <Route path='/login'  >

          <Login handleLogin={this.props.handleLogin} />
        </Route>
        <Route path='/add'>
          {this.props.categories && <Add categories={this.props.categories}
            handleAdd={this.props.handleAdd} />}
        </Route>

        <Route path='/books/:id'>
          {<Books handleDelete={this.props.handleDelete} />}
        </Route>

        <Route path='/category'>
          <Category 
    
           />
        </Route>

        <Route path='/category/:age'>
          <ShowAll allBooks={this.props.books} />
        </Route>

        <Route exact path='/'>
          <SimpleSlider />
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
        </Route>


      </div>


    )
  }
}


