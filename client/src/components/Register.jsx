import React, { Component } from 'react'
import './register.css'

export default class Register extends Component {
  state = {
    username: "",
    email: "",
    password: ""
  }

  handleChange = (e) => {
    const { name, value } = e.target;
    this.setState({
      [name]: value
    })
  }

  render() {
    const { username, email, password } = this.state;
    const { handleRegister, history } = this.props;

    return (
      <form onSubmit={(e) => {
        e.preventDefault();
        handleRegister(this.state);
        history.push('/');
      }}>
        <div className='register'>
        <h3>Register</h3>
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
            type="text"
              name="email"
              placeholder='Email'
            value={email}
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
          <div className='req'>
            <button className='button'>Submit</button>
            </div>
          </div>
      </form>
    )
  }
}
