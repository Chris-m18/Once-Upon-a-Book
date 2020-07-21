import React, { Component } from "react";
import Slider from "react-slick";
import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";
import './simpleslider.scss'





export default class SimpleSlider extends Component {
  render() {
    const settings = {
      dots: true,
      infinite: true,
      speed: 500,
      slidesToShow: 1,
      slidesToScroll: 1
    };
    return (
      <div>
        <h2></h2>
        <Slider {...settings}>
         
          <div>
            <img src="https://images-na.ssl-images-amazon.com/images/I/61ulN35aErL._SY452_BO1,204,203,200_.jpg"/>
          </div>
          <div>
            <img src="https://m.media-amazon.com/images/I/51tbUXDIgRL._SX260_.jpg"/>
          </div>
          <div>
            <img src="https://api.time.com/wp-content/uploads/2014/09/03-best-childrens-books-goodnight-moon.jpg?quality=85&w=660"/>
          </div>
          <div>
           <img src="https://api.time.com/wp-content/uploads/2015/01/best-children-books-1-020.png?w=812"/>
          </div>
          <div>
            <img src="https://api.time.com/wp-content/uploads/2014/09/26-best-childrens-books-alexander-and-the-terrible-horrible-no-good-very-bad-day.jpg?quality=85&w=738"/>
          </div>
          <div>
            <img src="https://api.time.com/wp-content/uploads/2014/09/68-best-childrens-books-oh-the-places-youll-go.jpg?quality=85&w=404" />
          </div>
        </Slider>
      </div>
     
    );
  }
}