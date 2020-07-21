import React, { Component } from 'react'
import { withRouter } from 'react-router-dom'
import { Link } from 'react-router-dom'
import { getAllBooks } from '../services/books'
import Header from './Header'

class Category extends Component {
  constructor(props) {
    super(props)
    this.state = {
      AllBooks: [],
      categoryName: '',
      allAges: [],


    }
  }

  async componentDidMount() {
    const allBooks = await getAllBooks()
    console.log(allBooks)

    this.setState({ allBooks })

    const categoryName = 'age' + ""

    this.setState({ categoryName })



    if (categoryName === "age") {
      let allAges = allBooks.map(item => item[categoryName])
        .filter((value, index, self) => self.indexOf(value) === index)

      console.log(allAges)
      this.setState({ allAges })
    }



    else if (categoryName === "age") {
      let categoryName = ["1 to 4", "4 to 8", "8 to 12"]
      this.setState({ categoryName })
    }

  }


  render() {
    let categoryName = this.state.categoryName
    if (categoryName === "age") {
      categoryName = "age"
    }

    return (
      <>

        <div>
          <div className="category-name">
            {categoryName.toUpperCase()}
          </div>
          <div>
            {this.state.allAges.map(age => 
              <Link to={`/category/${age}`} > <div>{age}</div></Link>  ) }
          </div>
          <categoryNamePreview allBooks={this.state.allBooks} categoryName={this.state.categoryName} />
        </div>
      </>
    )
  }

}

export default withRouter(Category)