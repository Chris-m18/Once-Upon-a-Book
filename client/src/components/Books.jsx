import React, { Component } from 'react'
import { getOneBook } from '../services/books'
import { withRouter } from 'react-router'




 class Books extends Component {
  state = {
    title: '',
    author: '',
    img_url: '',
    description: '',
    buy: '',
  }
  componentDidMount = async () => {
    const id = this.props.match.params.id
    const books = await getOneBook(id)
    this.setState({ books })
    console.log(books)
  }

  render() {
    return (
      <div>
         {/* <img src={books.img_ur.id}/> */}
        
      </div>
    )
  }
}
export default withRouter(Books)

