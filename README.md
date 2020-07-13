# Once-Upon-a-Book

> The Project Planning section **should be completed** for your project pitch with instructors.
>
> To ensure correct Markdown, copy and paste the raw template code into your project repo README file. Remove ALL template instructions and replace with your project details.

- [Overview](#overview)
- [MVP](#mvp)
  - [Goals](#goals)
  - [Libraries and Dependencies](#libraries-and-dependencies)
  - [Client (Front End)](#client-front-end)
    - [Wireframes](#wireframes)
    - [Component Tree](#component-tree)
    - [Component Hierarchy](#component-hierarchy)
    - [Component Breakdown](#component-breakdown)
    - [Time Estimates](#time-estimates)
  - [Server (Back End)](#server-back-end)
    - [ERD Model](#erd-model)
- [Post-MVP](#post-mvp)
- [Code Showcase](#code-showcase)
- [Code Issues & Resolutions](#code-issues--resolutions)

<br>

## Overview

# Once Upon a Book: This Project is inspired by my sons love of books.For parents sometimes it's not easy finding a good book for there little ones, With Once Upon a Book parents don't have to get overwhelmed looking for good books.

<br>

## MVP

> full back end with crud 
> functioning front end 
> the use of grid or flex box 

_The **Once Upon a Book** MVP is to have a fully functioning app, Using a fully bulid backend and front end._

<br>

### Goals

- _Getting a good amount of info in page,_
- _using new react techniques._
- _styling with basic css or scass._

<br>

### Libraries and Dependencies

> Use this section to list all supporting libraries and dependencies, and their role in the project. Below is an example - this needs to be replaced!

|     Library      | Description                                |
| :--------------: | :----------------------------------------- |
|      React       | _Front end user interface._ |
|   React Router   | _routing to all appropriate places.     ._ |
|   axios          | _api call._ |
|   ruby           | _for my backend._ |
|   rails          | _seed and schema._ |
|   flexbox        | _flexbox css ._ |

<br>

### Client (Front End)

#### Wireframes

> Use the Wireframes section to display desktop, tablet and mobile views. No hand-drawn wireframes. Use a tool like wireframe.cc, Whimsical or AdobeXD
Home
![](https://i.imgur.com/Qi6JhFw.png)
Category
![](https://i.imgur.com/SGiEFai.png)
Details
![](https://i.imgur.com/j4PS9k0.png)
Log-in
![](https://i.imgur.com/IHsHdA9.png)
Signup
![](https://i.imgur.com/B94KZoL.png)
User
![](https://i.imgur.com/jZ6HHTK.png)

Cerate
![](https://i.imgur.com/kJgsEDZ.png)

iphone
![](https://i.imgur.com/Sm5zCNU.png)

iphone
![](https://i.imgur.com/CKM2tK5.png)

iphone
![](https://i.imgur.com/2hCs05Y.png)

iphone
![](https://i.imgur.com/hZ1NwvC.png)

iphone
![](https://i.imgur.com/R5o3mPa.png)

iphone
![](https://i.imgur.com/7EMB2g1.png)

Tablet
![](https://i.imgur.com/KI3o2PI.png)



#### Component Tree

> Use this section to display the structure of how your React components are being rendered. This should show the parent to child relation between you components. In other words, show which components are rendering the other components. 

#### Component Hierarchy

> Use this section to define your React components and the data architecture of your app. This should be a reflection of how you expect your directory/file tree to look like. 

``` structure

src
|__ assets/
      |__ fonts
      |__ graphics
      |__ images
      |__ mockups
|__ components/
      |__ Header.jsx
      |__ Home.jsx
      |__ Details.jsk
      |__ Signin.jsx
      |__ Register.jsx
      |__ Admindetails.jsx
      |__ Create.jsx
      |__ UserPage.jsx
      |__ Category.jsx
      
|__ services/

```

#### Component Breakdown

> Use this section to go into further depth regarding your components, including breaking down the components as stateless or stateful, and considering the passing of data between those components.

|  Component   |    Type    | state | props | Description                                                          |
| :----------: | :--------: | :---: | :---: | :---------------------------------------------------------------     |
|    Header    | functional |   n   |   n   | _The header will contain the Links,  signin and logo._               |
|    Home      | functional |   n   |   n   | _The home page will contain a slide show and links to top 20 books._ |
|    Category  |   class    |   y   |   n   | _The gallery will render the Books using flexbox._                   |
|    Details   | functional |   n   |   y   | _the page will render info about the book._                          |
|    Signin    | functional |   n   |   n   | _The Signin page is for current users to signin to site._            |
|    Register  | functional |   n   |   n   | _The Register page is for new users to join  to site._               |
|Admindetails  | functional |   n   |   n   | _The admin page is for the admin to edit and delete books._          |
|    Create    | functional |   n   |   n   | _The create page is for users to submit there favs to site._         |
|    Userpage  | functional |   n   |   n   | _The Userpage holds all of the users favorited books._               |

![](https://i.imgur.com/n4CJiPy.png)

#### Time Estimates

> Use this section to estimate the time necessary to build out each of the components you've described above.

| Task                | Priority | Estimated Time | Time Invested | Actual Time |
| ------------------- | :------: | :------------: | :-----------: | :---------: |
|         AUF         |    L     |     2 hrs      |       hrs     |      hrs    |
| Create CRUD Actions |    H     |     3 hrs      |       hrs     |     TBD     |
| Tables              |    H     |     2 hrs      |       hrs     |     TBD     |
| Shema               |    H     |     4 hrs      |       hrs     |     TBD     |
|  React              |    H     |     9 hrs      |       hrs     |     TBD     |
| css                 |    H     |     3 hrs      |       hrs     |     TBD     |
| deploment           |    H     |     2 hrs      |       hrs     |     TBD     |
| TOTAL               |          |     31 hrs     |       hrs     |     TBD     |

> _Why is this necessary? Time frames are key to the development cycle. You have limited time to code your app, and your estimates can then be used to evaluate possibilities of your MVP and post-MVP based on time needed. It's best you assume an additional hour for each component, as well as a few hours added to the total time, to play it safe._

<br>

### Server (Back End)

#### ERD Model

![](https://i.imgur.com/Buv0cRn.png)

<br>

***

## Post-MVP

admin
![](https://i.imgur.com/E8CBKNn.png)
Details
![](https://i.imgur.com/YYaIsqU.png)

***

## Code Showcase

> Use this section to include a brief code snippet of functionality that you are proud of and a brief description.

## Code Issues & Resolutions

> Use this section to list of all major issues encountered and their resolution.
