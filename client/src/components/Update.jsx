import React, { Component } from 'react'
import { withRouter } from 'react-router'

class Update extends Component {
  state = {
    title: '',
    author: '',
    img_url: '',
    description: '',
    age: '',
  }

  componentDidMount() {
    if (this.props.books.length) {
      this.setFormData();
    }
  }

  componentDidUpdate(prevProps) {
    if ( prevProps.books.length !== this.props.books.length ) {
      this.setFormData();
    }
  }

  setFormData = () => {
    const id = this.props.match.params.id
    const book = this.props.books.find((book) => book.id === parseInt(id))
    const {title, author, img_url, description,age, } = book
    this.setState({
      title, author, img_url, description,age,
    })
  }

  handleChange = (e) => {
    const { name, value } = e.target;
    this.setState({
      [name]: value
    })
  }

  render() {
    const {  handleUpdate, history } = this.props;
    const id = this.props.match.params.id
    return (
      <form onSubmit={(e) => {
        e.preventDefault();
         handleUpdate(id, this.state);
        history.push('/');
      }}>
        <h3>Edit</h3>
        <label>
          Title:
          <input
            type='text' 
            name='title'
            value={this.state.title}
            onChange={this.handleChange}
          />
        </label>
        <label>
          Author:
          <input
            type='text'
            name='author'
            value={this.state.author}
            onChange={this.handleChange}
          />
        </label>
        <label>
        Description:
          <input
            type='text'
            name='description'
            value={this.state.description}
            onChange={this.handleChange}
          />
        </label>
        <label>
          Image:
          <input
            type='text'
            name='img_url'
            value={this.state.img_url}
            onChange={this.handleChange}
          />
        </label>
        <label>
          Age:
          <input
            type='text'
            name='age'
            value={this.state.age}
            onChange={this.handleChange}
          />
        </label>
        <button>Submit</button>
      </form>
    )
  }
}
export default  withRouter (Update)