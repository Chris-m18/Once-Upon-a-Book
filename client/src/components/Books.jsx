import React, { Component } from 'react'
import { getOneBook } from '../services/books'
import { withRouter } from 'react-router'
import { Link } from "react-router-dom"
import './books.css'



class Books extends Component {
  state = {

  }
  componentDidMount = async () => {
    const id = this.props.match.params.id
    const books = await getOneBook(id)
    this.setState({ books })
    console.log(books)
  }
  



  render() {
    const book = this.state.books
    return (<>
      {this.state.books &&
        <div>
          <div className='title'>
            <h3>{book.title}</h3>
          </div>
          <img src={book.img_url} />
          <h3>By:{book.author}</h3>
        <h3>{book.description}</h3>
        
          <div className="button-container">
            <button className="edit-button">
              <Link className="edit-link" to={`/book/${book.id}/edit`}>Edit</Link>
            </button>
            <button className="delete-button" onClick={() => this.props.handleDelete(book.id)}>Delete</button>

          </div>
        </div>
      }
    </>
    )
  }
}
export default withRouter(Books)

