import './App.css';
import React, { Component } from 'react'
import Header from './components/Header'
import { loginUser, registerUser, removeToken, verifyUser } from './services/auth'
import { getAllBooks, getAllCategories, postBook, deleteBook, putBook } from './services/books'
import Main from './components/Main'
import { withRouter, Route } from 'react-router-dom';
import ShowAll from './components/ShowAll';

class App extends Component {
  state = {
    currentUser: null,
    books: null,
    get: null,
    categories: null,
  }


  componentDidMount() {
    this.handleVerify();
    this.getBooks();
    this.getCategories()
  }

  handleLogin = async (userData) => {
    const currentUser = await loginUser(userData);
    this.setState({ currentUser })
    this.props.history.push('/')
  }

  handleRegister = async (userData) => {
    const currentUser = await registerUser(userData);
    this.setState({ currentUser })
  }

  handleLogout = () => {
    this.setState({
      currentUser: null
    })
    localStorage.removeItem('authToken');
    removeToken();
    this.props.history.push('/')
  }

  handleVerify = async () => {
    const currentUser = await verifyUser();
    this.setState({ currentUser });
  }

  getBooks = async () => {
    const books = await getAllBooks()
    this.setState({ books })
  }


  handleAdd = async (id, book) => {
    const newBook = await postBook(id, book)
    this.setState(prevState => ({
      books: [...prevState.books, newBook]
    }))
    this.props.history.push('/')
  }

  getCategories = async () => {
    const categories = await getAllCategories()
    this.setState({categories})
  }


  handleUpdate = async (id, bookData) => {
    const newBook = await putBook(id, bookData);
    this.setState(prevState => ({
      books: prevState.books.map(book => book.id === parseInt(id) ? newBook : book)
    }))
  }
  handleDelete = async (id) => {
    const remove  = await deleteBook(id)
    this.setState({remove})

  } 

  render() {
    return (
      <div>
        
        <Header
          currentUser={this.state.currentUser}
          handleLogout={this.handleLogout}
        />
        
        <Route path='/'>
          <Main
            
             handleLogin={this.handleLogin}
            categories={this.state.categories}
            handleAdd={this.handleAdd}
            handleDelete={this.handleDelete}
            books={this.state.books} />
        </Route>

        
      </div>

    )
  }
}

export default withRouter(App);


