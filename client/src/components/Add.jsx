import React, { Component } from 'react'
import { withRouter } from 'react-router'
import './add.css'




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
      category: value
    })
  }

  render() {
    return (
      <div>

        <form onSubmit={(e) => {
          e.preventDefault()
          this.props.handleAdd(this.state.category, this.state.book)

        }
        }>
          <div className='submit'>
            <label>
          
            <input
                name='title'
                placeholder='Title'
                type='text'
                value={this.state.book.title}
                onChange={this.handleChange} />
            </label>
         
          <label>
              <input
                name='author'
                placeholder=' Author'
                type='text'
                value={this.state.book.author}
                onChange={this.handleChange} />
            </label>
          
          <label>
              <input
                name='description'
                placeholder='Description'
                type='text'
                value={this.state.book.description}
                onChange={this.handleChange} />
            </label>
        
          <label>
              <input
                name='img_url'
                placeholder='Image'
                type='text'
                value={this.state.book.img_url}
                onChange={this.handleChange} />
            </label>
          
<label >
              <input
                name='age'
                placeholder='Age'
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

            <input className='input' type='submit' value="Add Book" />
          </div>
        </form>

      </div>
    )
  }
}

export default withRouter(Add)