import React, { Component } from 'react'
import { withRouter, Route } from 'react-router'

class ShowAll extends Component {
  state = {
    matchedBooks: [],
  }

  componentDidMount = async () => {
    const age = this.props.match.params.age
    const books = this.props.allBooks
    let matchedBooks = await books.filter(books => books.age === age)
    this.setState({
      matchedBooks
    })
    console.log(this.props.allBooks)
  }


  render() {
    console.log(this.props.allBooks)
    console.log(this.state.matchedBooks)
    return (
      <div>
        {this.state.matchedBooks.length > 0 ?
          <img src={this.state.matchedBooks[0].img_url} /> : 
          "" }
        
      </div>
    )
  }
}

export default withRouter(ShowAll)