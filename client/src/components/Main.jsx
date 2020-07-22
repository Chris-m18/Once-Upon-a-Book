import React, { Component } from 'react'
import SimpleSlider from './SimpleSlider'
import { Link, Route } from 'react-router-dom';
import Books from './Books'
import Add from './Add'
import Category from './Category'
import Login from './Login'
import './main.css'
import ShowAll from './ShowAll';
import Update from './Update';
import Register from './Register';


export default class Main extends Component {



  render() {
    console.log(this.props.books)
    return (
      <div>


        <Route path='/login'  >
          <Login handleLogin={this.props.handleLogin} />
        </Route>
        <Route path='/register'>
          <Register handleRegister={this.props.handleRegister} />
        </Route>
        <Route path='/add'>
          {this.props.categories && <Add categories={this.props.categories}
            handleAdd={this.props.handleAdd} />}
        </Route>
        <Route path='/books/:id'>
          {<Books handleDelete={this.props.handleDelete} />}
        </Route>

        <Route path='/book/:id/edit'>
          <Update books={this.props.books}
            handleUpdate={this.props.handleUpdate}
          />
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
          <div className='books'>
            {this.props.books && this.props.books.map(
              book => (

                <div className='book' >
                  <Link to={`/books/${book.id}`}>
                    <img className="pic" src={book.img_url} />
                  </Link>

                </div>

              )

            )}
          </div>
        </Route>


      </div>


    )
  }
}


