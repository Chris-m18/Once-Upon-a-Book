import React, { Component } from 'react'
import { Link } from 'react-router-dom';
import './login.css'


export default class Login extends Component {
  state = {
    username: "",
    password: ""
  }

  handleChange = (e) => {
    const { name, value } = e.target;
    this.setState({
      [name]: value
    })
  }

  render() {
    const { username, password } = this.state;
    const { handleLogin, history } = this.props;

    return (
    
      <form onSubmit={(e) => {
        e.preventDefault();
        handleLogin(this.state);
  
      }}>
        <div className='login'>
        <h3>Login</h3>
        <label>
         
          <input
            type="text"
              name="username"
              placeholder='Username'
            value={username}
            onChange={this.handleChange}
          />
        </label>
        <br />
        <label>
         
          <input
            type="password"
              name="password"
              placeholder='Password'
            value={password}
            onChange={this.handleChange}
          />
        </label>
        <br />
     
          <Link className='reg' to='/register'>Register</Link>

          <button className='sub'>Submit</button>
          </div>
      </form>

    )
  }
}
