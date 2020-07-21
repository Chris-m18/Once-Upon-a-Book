import React, { Component } from 'react'

export default class Update extends Component {
  state = {
    title: '',
    author: '',
    img_url: '',
    description: '',
    age: '',
  }

  componentDidMount() {
    if (this.props.book) {
      this.setFormData();
    }
  }

  componentDidUpdate(prevProps) {
    if ( prevProps.book !== this.props.book ) {
      this.setFormData();
    }
  }

  setFormData = () => {
    this.setState({
      name: this.props.book.name
    })
  }

  handleChange = (e) => {
    const { value } = e.target;
    this.setState({
      name: value
    })
  }

  render() {
    const { handleUpdate, history, id } = this.props;
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
            value={this.state.book.title}
            onChange={this.handleChange}
          />
        </label>
        <label>
          Author:
          <input
            type='text'
            value={this.state.book.author}
            onChange={this.handleChange}
          />
        </label>
        <label>
        Description:
          <input
            type='text'
            value={this.state.book.description}
            onChange={this.handleChange}
          />
        </label>
        <label>
          Image:
          <input
            type='text'
            value={this.state.book.img_url}
            onChange={this.handleChange}
          />
        </label>
        <label>
          Age:
          <input
            type='text'
            value={this.state.book.age}
            onChange={this.handleChange}
          />
        </label>
        <button>Submit</button>
      </form>
    )
  }
}
