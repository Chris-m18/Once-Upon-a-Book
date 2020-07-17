import './App.css';
import React, { Component } from 'react'
import Header from './components/Header'
import { loginUser, registerUser, removeToken, verifyUser } from './services/auth'
import { getAllBooks } from './services/books'
import Main from './components/Main'
import Books from './components/Books'
import { withRouter, Route, Router } from 'react-router-dom';
import Login from './components/Login';

class App extends Component {
  state = {
    currentUser: null,
    books: null,
    get: null,
  }


  componentDidMount() {
    this.handleVerify();
    this.getBooks()
  }

  handleLogin = async (userData) => {
    const currentUser = await loginUser(userData);
    this.setState({ currentUser })
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
    this.setState({ books})
  }
   


  render() {
    return (
      <div>
        <Header
          currentUser={this.state.currentUser}
          handleLogout={this.handleLogout}
        />
        <Route path='/auth/login'  >
          <Login/>
        </Route>
     
        <Main
          books={this.state.books} />

          <Books />
      </div>
      
    )
  }
}

export default withRouter(App);


