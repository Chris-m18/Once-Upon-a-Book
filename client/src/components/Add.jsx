import React, { Component } from 'react'
import { withRouter } from 'react-router'




class Add extends Component {
  state = {
    books: null,
    postBook: false,
    book: {
      title: '',
      author: '',
      img_url: '',
      description: '',
      age: '',

    },
    category: null,
  }

 

  handleChange = (e) => {
    const { name, value } = e.target
    this.setState(prevState => ({
      book: {
        ...prevState.book,
        [name]: value
      }
    }))
  }

  categoryChange = (e) => {
    const { value } = e.target
    this.setState({
      category:value
    })
}

  render() {
    return (
      <div>

        <form onSubmit={(e) => {
          e.preventDefault()
          this.props.handleAdd(this.state.category,this.state.book)

        }
        }>
          <label>
            Title:
            <input
              name='title'
              type='text'
              value={this.state.book.title}
              onChange={this.handleChange} />
          </label>
          Author:
          <label>
            <input
              name='author'
              type='text'
              value={this.state.book.author}
              onChange={this.handleChange} />
          </label>
          Description:
          <label>
            <input
              name='description'
              type='text'
              value={this.state.book.description}
              onChange={this.handleChange} />
          </label>
          Image:
          <label>
            <input
              name='img_url'
              type='text'
              value={this.state.book.img_url}
              onChange={this.handleChange} />
          </label>
          Age:
<label >
          <input
              name='age'
              type='text'
              value={this.state.book.age}
              onChange={this.handleChange} />
          </label>
          <select onChange={this.categoryChange}>
            {this.props.categories.map(category => (
              <option value={category.id}>{category.title}</option>
            )
              
            
            
            )}

</select>

          <input type='submit' value="Add Book" />
        </form>
      </div>
    )
  }
}

export default withRouter(Add)