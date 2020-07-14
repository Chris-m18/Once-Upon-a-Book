#  This file should contain all the record creation needed to seed the database with its default values.
#  The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Category.destroy_all
Book.destroy_all
user = User.create!(username: 'chris', email: 'admin@email.com', password: '123456')

category = Category.create!(title: "hello")

books = Book.create!([
  {
    title: "Where the Wild Things Are",
    author: "Maurice Sendak",
    img_url: "https://www.thoughtco.com/thmb/cCU4lYYIaYndwxZipio1yfdVJQ4=/1650x1238/smart/filters:no_upscale()/Wherethe-5c60a9d0c9e77c000166221b.jpg",
    description: "The adventure that has inspired generations of children to let out their inner monsters, showing how imagination allows for an escape from life’s doldrums. It’s also a moving testament to family love: when young Max returns from his reverie, his mother has saved him a hot dinner.",
    buy: "https://www.amazon.com/Where-Wild-Things-Maurice-Sendak/dp/0064431789/ref=sr_1_1?crid=7UHBWLJJS71F&dchild=1&keywords=where+the+wild+things+are&qid=1594674341&sprefix=where+the+%2Caps%2C134&sr=8-1",
    age: "4-8", 
    user_id:user.id,
    category_id:category.id
    
  },
  {
    title: "The Snowy Day",
    author: "Ezra Jack Keats",
    img_url: "https://api.time.com/wp-content/uploads/2014/09/02-best-childrens-books-the-snowy-day.jpg?quality=85&w=723",
    description: "The journey of Peter through a snowbound New York City made for a milestone: as a successful children’s story focused on a black protagonist, it broke down barriers many white editors may have never noticed. But Keats’ book is memorable too for the sheer beauty of its collage illustrations.",
    buy: "https://www.amazon.com/Snowy-Day-Ezra-Jack-Keats/dp/0140501827/ref=sr_1_1?crid=2DTGJ4XBS4TOS&dchild=1&keywords=the+snowy+day&qid=1594677453&sprefix=the+snowy+%2Caps%2C143&sr=8-1",
    age: "2-5",
    user_id:user.id,
    category_id:category.id
    
  },
  {
    title: "Goodnight Moon",
    author: "Margaret Wise Brown",
    img_url: "https://api.time.com/wp-content/uploads/2014/09/03-best-childrens-books-goodnight-moon.jpg?quality=85&w=660",
    description: "Somewhere a child is being put to sleep right now to Brown’s soothing, repetitive cadences. While the lines may be etched in every parent’s memory, Hurd’s illustrations, with their quirky hidden jokes, provide amusement on the thousandth reading.",
    buy: "https://www.amazon.com/Goodnight-Moon-Margaret-Wise-Brown/dp/0694003611/ref=sr_1_1?crid=3S9TFKNGNS1AL&dchild=1&keywords=goodnight+moon&qid=1594677522&sprefix=goodnight+%2Caps%2C151&sr=8-1",
    age: "1-4",
    user_id:user.id,
    category_id:category.id
    
  },
   {
     title: "Blueberries for Sal",
     author: "Robert McCloskey",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/04-best-childrens-books-blueberries-for-sal.jpg?quality=85&w=759",
     description: "The block-printed illustrations show just how similar families of different species can be, as child Sal and a baby bear covet Maine blueberries on a berry hunt with their respective mothers. It’s an instructive read for any kid who’s ever felt a bit like a wild animal, or parents who’ve ever felt like they’re raising one.",
     buy: "https://www.amazon.com/Blueberries-Sal-Robert-McCloskey/dp/0670175919/ref=sr_1_1?crid=B3K46FI8CD0H&dchild=1&keywords=blueberries+for+sal&qid=1594677763&sprefix=blueberri%2Caps%2C155&sr=8-1",
     age: "3-7",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "Little Bear (series)",
     author: "Else Holmelund Minarek",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/05-best-childrens-books-little-bear.jpg?quality=85&w=354",
     description: "Minarik wrote these stories, which convey a young cub’s yearning for his absent father, but it’s Sendak’s illustrations that catch the eye and allow for endless imaginings of life among woodland critters.",
     buy: "https://www.amazon.com/Little-Bear-Can-Read-Book/dp/0064440044/ref=sr_1_2?dchild=1&keywords=Little+Bear+%28series%29&qid=1594677884&sr=8-2",
     age: "4-8",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "Owl Moon",
     author: "Jane Yolen",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/07-best-childrens-books-owl-moon.jpg?quality=85&w=421",
     description: "Many young bird watchers likely owe their passion to this story of a father-daughter trip to find the elusive great horned owl takes flight thanks to Schoenherr’s evocative woods-at-night illustrations.",
     buy: "amazon.com/Owl-Moon-Jane-Yolen/dp/0399214577/ref=sr_1_1?dchild=1&keywords=owl+moon&qid=1594677995&sr=8-1",
     age: "3-7",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "The Giving Tree",
     author: "Shel Silverstein",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/08-best-childrens-books-the-giving-tree1.jpg?quality=85&w=446",
     description: "It’s hard to imagine a story more poignant than the tale of a tree that gives its life for a boy turned self-centered young man. It’s been interpreted along environmentalist and religious lines, but all can agree on the beauty of its underlying theme of generosity.",
     buy: "amazon.com/Giving-Tree-Shel-Silverstein/dp/0060256656/ref=sr_1_1?dchild=1&keywords=the+giving+tree&qid=1594678074&sr=8-1",
     age: "1-8",
     user_id:user.id,
    category_id:category.id
   },
   {
     title: "The True Story of the Three Little Pigs",
     author: "Jon Scieszka",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/10-best-childrens-books-the-true-story-of-the-three-little-pigs.jpg?quality=85&w=436",
     description: "This ironic, witty book, which revises the story of the pigs as an exculpatory memoir by the wolf—who claims he’s not so big and bad at all!—is a welcome corrective to more saccharine tales. It also introduces young readers to the notion of dueling perspectives",
     buy: "https://www.amazon.com/True-Story-Three-Little-Pigs/dp/0140544518/ref=sr_1_1?crid=2KSV339EQMHCK&dchild=1&keywords=the+true+story+of+the+3+little+pigs&qid=1594678164&sprefix=the+true+%2Caps%2C147&sr=8-1",
     age: "6-9",
     user_id:user.id,
    category_id:category.id
   },
   {
     title: "Tuesday",
     author: "David Wiesner",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/11-best-childrens-books-tuesday.jpg?quality=85&w=525",
     description: "Who needs text? Not this illustrator, who also “wrote” the very few words that make up his tale. His stunning, propulsive watercolors show flying frogs on a surreal adventure. Reading may be fundamental, but here the pictures do almost all the talking.",
     buy: "https://www.amazon.com/Tuesday-David-Wiesner/dp/0395870828/ref=sr_1_1?dchild=1&keywords=tuesday&qid=1594678231&sr=8-1",
     age: "4-7",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "Where the Sidewalk Ends",
     author: "Shel Silverstein",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/12-best-childrens-books-where-the-sidewalk-ends.jpg?quality=85&w=434",
     description: "Silverstein wasn’t just good at tales of leafy self-sacrifice. His loopy poems have been speaking to kids’ concerns and sparking their imaginations for decades. Any child who’s ever fantasized about playing “hug o’ war” instead of tug-of-war will find a kindred spirit in these pages.",
     buy: "https://www.amazon.com/Where-Sidewalk-Ends-Poems-Drawings/dp/0060256672/ref=sr_1_1?dchild=1&keywords=where+the+sidewalk+ends&qid=1594678313&sr=8-1",
     age: "1-3",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "Harold and the Purple Crayon",
     author: "Crockett Johnson",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/18-best-childrens-books-harold-and-the-purple-crayon1.jpg?quality=85&w=447",
     description: "A creative boy crafts entire worlds of his own devising, using only his trusty crayon.",
     buy: "https://www.amazon.com/Harold-Purple-Crayon-Books/dp/0064430227/ref=sr_1_1?crid=3B98ZG03QSBJZ&dchild=1&keywords=harold+and+the+purple+crayon&qid=1594678382&sprefix=harold+%2Caps%2C151&sr=8-1",
     age: "4-8",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "Make Way for Ducklings",
     author: "Robert McCloskey",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/06-best-childrens-books-make-way-for-ducklings.jpg?quality=85&w=434",
     description: "A loving mother duck ferries her eight young ones through Boston.",
     buy: "https://www.amazon.com/Ducklings-Viking-Kestrel-Picture-Books/dp/0670451495/ref=sr_1_1?crid=17HJWIT1HXJZX&dchild=1&keywords=make+way+for+ducklings&qid=1594678484&sprefix=make+%2Caps%2C140&sr=8-1",
     age: "3-7",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "Olivia",
     author: "Ian Falconer.",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/22-best-childrens-books-olivia.jpg?quality=85&w=421",
     description: "Minimalist charcoal illustrations enrich the quietly funny narrative about a confident little pig.",
     buy: "https://www.amazon.com/Olivia-Ian-Falconer/dp/0689874723/ref=sr_1_2?dchild=1&keywords=olivia&qid=1594678550&sr=8-2",
     age: "2-5",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "Madeline (series)",
     author: "Ludwig Bemelmans.",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/20-best-childrens-books-madeline.jpg?quality=85&w=407",
     description: "A spunky French girl navigates boarding school and the removal of her appendix with confidence and poise.",
     buy: "https://www.amazon.com/Madeline-Ludwig-Bemelmans/dp/0670445800/ref=sr_1_1?crid=89XZBI7XI3QN&dchild=1&keywords=madeline+books&qid=1594678645&sprefix=mad%2Caps%2C150&sr=8-1",
     age: "3-7",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "Anno's Journey",
     author: "Mitsumasa Anno",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/14-best-childrens-books-annos-journey.jpg?quality=85&w=462",
     description: "This visual feast doesn't need a single word to showcase the beauty of northern Europe.",
     buy: "https://www.amazon.com/Annos-Journey-Mitsumasa-Anno/dp/0698114337/ref=sr_1_1?crid=2AN3AKNPMTLC0&dchild=1&keywords=annos+journey&qid=1594678712&sprefix=annos+%2Caps%2C146&sr=8-1",
     age: "4-8",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "Frog and Toad (series)",
     author: "Arnold Lobel",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/17-best-childrens-books-frog-and-toad.jpg?quality=85&w=376",
     description: "Two inseparable best friends keep each other company during all their adventures.",
     buy: "https://www.amazon.com/Frog-Toad-Collection-Box-Set/dp/0060580860/ref=sr_1_1?dchild=1&keywords=frog+and+toad&qid=1594678793&sr=8-1",
     age: "4-8",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "Click, Clack, Moo",
     author: "Doreen Cronin",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/15-best-childrens-books-click-clack-moo.jpg?quality=85&w=432",
     description: "This story about farm animals sticking up for their rights wryly reveals the power of peaceful protest.",
     buy: "https://www.amazon.com/Click-Clack-Cows-That-Type/dp/0689832133/ref=sr_1_2?crid=1GKO4PV0DGK7Z&dchild=1&keywords=click+clack+moo&qid=1594678868&sprefix=click+%2Caps%2C147&sr=8-2",
     age: "3-8",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "The Story of Ferdinand",
     author: "Munro Leaf",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/25-best-childrens-books-the-story-of-ferdinand1.jpg?quality=85&w=457",
     description: "Contrary to the stereotype of his species, Ferdinand is a calm, peaceful bull who likes to relax under the cork tree.",
     buy: "https://www.amazon.com/Story-Ferdinand-Munro-Leaf/dp/0670674249/ref=sr_1_1?crid=U1L5J59JPZ6&dchild=1&keywords=the+story+of+ferdinand&qid=1594678942&sprefix=the+story+of+%2Caps%2C150&sr=8-1",
     age: "3-5",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "Don't Let the Pigeon Drive the Bus",
     author: "Mo Williams",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/16-best-childrens-books-dont-let-the-pigeon-drive-the-bus.jpg?quality=85&w=561",
     description: "One stubborn pigeon refuses to give up on his bird-brained dream of driving a vehicle.",
     buy: "https://www.amazon.com/Dont-Let-Pigeon-Drive-Book/dp/1423145143/ref=sr_1_1_sspa?crid=29SO6VHG7KM8L&dchild=1&keywords=dont+let+the+pigeon+drive+the+bus+book&qid=1594679025&sprefix=dont+let+%2Caps%2C143&sr=8-1-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUEyQTBTRUtRVDg4TkhEJmVuY3J5cHRlZElkPUEwNDQzMDEyMklQMkRFUEpWUUpKMSZlbmNyeXB0ZWRBZElkPUEwNjEzMzQ5TjUzOEtBV1MyVUJYJndpZGdldE5hbWU9c3BfYXRmJmFjdGlvbj1jbGlja1JlZGlyZWN0JmRvTm90TG9nQ2xpY2s9dHJ1ZQ==",
     age: "3-5",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "The Lorax",
     author: "Dr. Seuss",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/84-best-childrens-books-the-lorax.jpg?quality=85&w=410",
     description: "Seuss takes on serious subject matter without compromising his playful style in this environmentalist fable.",
     buy: "https://www.amazon.com/Lorax-Classic-Seuss-Dr/dp/0394823370/ref=sr_1_2?dchild=1&keywords=the+lorax&qid=1594679098&sr=8-2",
     age: "5-9",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "Corduroy",
     author: "Don Freeman",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/36-best-childrens-books-corduroy.jpg?quality=85&w=650",
     description: "In the middle of the night, a toy bear comes to life and hops off the shelf to replace his missing button.",
     buy: "https://www.amazon.com/Corduroy-Don-Freeman/dp/0451470796/ref=sr_1_1?dchild=1&keywords=corduroy&qid=1594679168&sr=8-1",
     age: "1-3",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "I Want My Hat Back",
     author: " Jon Klassen",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/19-best-childrens-books-i-want-my-hat-back.jpg?quality=85&w=402",
     description: "The witty account of a bear seeking out his lost hat; the illustrations are studded with subtle clues.",
     buy: "https://www.amazon.com/I-Want-My-Hat-Back/dp/0763655988/ref=sr_1_1?crid=14A5R92V4HGP6&dchild=1&keywords=i+want+my+hat+back&qid=1594679242&sprefix=i+want%2Caps%2C151&sr=8-1",
     age: "4-8",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "Miss Rumphius",
     author: "Barbara Cooney",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/21-best-childrens-books-miss-rumphius.jpg?quality=85&w=676",
     description: "The true story of a woman who spread flower seeds everywhere she went, filling the coast of Maine with blossom.",
     buy: "https://www.amazon.com/Miss-Rumphius-Barbara-Cooney/dp/0140505393/ref=sr_1_1?crid=2XJSMWDZ22UAF&dchild=1&keywords=miss+rumphius&qid=1594679319&sprefix=miss+rum%2Caps%2C144&sr=8-1",
     age: "5-8",
     user_id:user.id,
    category_id:category.id
  },
    {
     title: "Brave Irene",
     author: "William Steig",
     img_url: "https://api.time.com/wp-content/uploads/2015/01/best-children-books-1-010.jpg?quality=85&w=451",
     description: "A dressmaker's daughter bravely ventures into a snowstorm to deliver the duchess her new gown in time for the ball.",
     buy: "https://www.amazon.com/Brave-Irene-Picture-William-Steig/dp/0312564228/ref=sr_1_1?crid=9SC137IBNF5I&dchild=1&keywords=brave+irene&qid=1594679384&sprefix=brave+i%2Caps%2C254&sr=8-1",
     age: "4-8",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "Alexander and the Terrible, Horrible, No Good, Very Bad Day",
     author: "Judith Viorst",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/26-best-childrens-books-alexander-and-the-terrible-horrible-no-good-very-bad-day.jpg?quality=85&w=738",
     description: "Alexander's nonstop misfortunes pile up comically over the course of one outrageous day",
     buy: "https://www.amazon.com/Alexander-Terrible-Horrible-Good-Very/dp/0689711735/ref=sr_1_2?crid=3R78PHCN43LMI&dchild=1&keywords=alexander+and+the+horrible+no+good+very+bad+day&qid=1594679467&sprefix=alex%2Caps%2C152&sr=8-2",
     age: "6-9",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "The Cat in the Hat",
     author: "Dr. Seuss",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/105-best-childrens-books-the-cat-in-the-hat.jpg?quality=85&w=410",
     description: "A big cat surprises Dick and Sally, transforming their dreary day at home into a wild adventure",
     buy: "https://www.amazon.com/Cat-Hat-Dr-Seuss/dp/039480001X/ref=sr_1_1?crid=2RAYQF324S5F8&dchild=1&keywords=the+cat+in+the+hat+book&qid=1594679531&sprefix=the+cat+%2Caps%2C144&sr=8-1",
     age: "3-7",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "Press Here",
     author: "Herve Tullet",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/23-best-childrens-books-press-here.jpg?quality=85&w=500",
     description: "An innovative, interactive work that gets kids to play with the physical form of the book.",
     buy: "https://www.amazon.com/Press-Here-Board-Herve-Tullet/dp/1452178593/ref=sr_1_1?dchild=1&keywords=pree+here+book&qid=1594679597&sr=8-1",
     age: "3-5",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "The Day the Crayons Quit",
     author: "Drew Daywalt",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/37-best-childrens-books-the-day-the-crayons-quit.jpg?quality=85&w=556",
     description: "All the crayons in Duncan's box go on strike, citing all kinds of hilarious grievances.",
     buy: "https://www.amazon.com/Day-Crayons-Quit-Drew-Daywalt/dp/0399255370/ref=sr_1_1?crid=3VRFDPJ865BIL&dchild=1&keywords=the+day+the+crayons+quit&qid=1594679679&sprefix=the+day+%2Caps%2C140&sr=8-1",
     age: "3-7",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "Whistle for Willie",
     author: "Ezra Jack Keats",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/103-best-childrens-books-whistle-for-willie.jpg?quality=85&w=656",
     description: "Richly colorful illustrations accompany this tale about a boy learning to whistle.",
     buy: "https://www.amazon.com/Whistle-Willie-Ezra-Jack-Keats/dp/0670880469/ref=sr_1_1?crid=3EWLKARXJJJ4N&dchild=1&keywords=whistle+for+willie&qid=1594679763&sprefix=whistle+%2Caps%2C145&sr=8-1",
     age: "2-7",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "The Garden of Abdul Gasazi",
     author: "Chris Van Allsburg.",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/79-best-childrens-books-the-garden-of-abdul-gasazi.jpg?quality=85&w=500",
     description: "An elegant, eerie story about an enchanted garden where it is not easy to separate what's real from what isn't",
     buy: "https://www.amazon.com/Garden-Abdul-Gasazi-Chris-Allsburg/dp/039527804X/ref=sr_1_1?crid=7TOHD7WGEL3F&dchild=1&keywords=the+garden+of+abdul+gasazi&qid=1594679847&sprefix=the+graden+of+a%2Caps%2C139&sr=8-1",
     age: "4-7",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "Yertle the Turtle",
     author: "Dr. Seuss",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/104-best-childrens-books-yertle-the-turtle.jpg?quality=85&w=407",
     description: "In this collection of Seuss tales, a turtle king tries to stand tall by stacking his subjects on top of each other.",
     buy: "https://www.amazon.com/Yertle-Turtle-Other-Stories-Seuss/dp/0394800877/ref=sr_1_1?crid=2VV1RG1ZTWX3K&dchild=1&keywords=yertle+the+turtle+by+dr.+seuss&qid=1594679910&sprefix=yertle+%2Caps%2C142&sr=8-1",
     age: "5-9",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "Millions of Cats",
     author: "Wanda Gag",
     img_url: "https://api.time.com/wp-content/uploads/2015/01/best-children-books-1-006.jpg?quality=85&w=821",
     description: "A man seeking a new feline friend is unable to pick just one, and brings home way too many.",
     buy: "https://www.amazon.com/Millions-Cats-Picture-Puffin-Books/dp/0142407089/ref=sr_1_1?crid=KJOP5NXU0ALQ&dchild=1&keywords=millions+of+cats&qid=1594679989&sprefix=millions+%2Caps%2C150&sr=8-1",
     age: "2-5",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "Chicka Chicka Boom Boom",
     author: "Bill Martin Jr.",
     img_url: "https://api.time.com/wp-content/uploads/2015/01/best-children-books-1-001.jpg?quality=85&w=461",
     description: "Letters (literally) come to life in this alphabet book about a risky climb up a coconut tree.",
     buy: "https://www.amazon.com/Chicka-Boom-Board-Book/dp/1442450703/ref=sr_1_2?crid=18V8U89TFVNQB&dchild=1&keywords=chicka+chicka+boom+boom&qid=1594680061&sprefix=chicka%2Caps%2C150&sr=8-2",
     age: "1-4",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "A Bear Called Paddington",
     author: "Michael Bond",
     img_url: "https://api.time.com/wp-content/uploads/2015/01/best-children-books-1-004.jpg?quality=85&w=362",
     description: "This iconic bear with the blue jacket charms readers with his clumsiness and ridiculous antics.",
     buy: "https://www.amazon.com/Bear-Called-Paddington-Michael-Bond/dp/0062312189/ref=sr_1_1?crid=MVU0GXPNRAAH&dchild=1&keywords=a+bear+called+paddington+book&qid=1594680135&sprefix=a+bear+%2Caps%2C142&sr=8-1",
     age: "8-12",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "Winnie the Pooh (series)",
     author: "A.A. Milne",
     img_url: "https://api.time.com/wp-content/uploads/2015/01/best-children-books-1-015.jpg?quality=85&w=372",
     description: "Children cannot resist this sweet, slow-moving bear with a taste for hunny.",
     buy: "https://www.amazon.com/The-Complete-Tales-of-Winnie-The-Pooh/dp/0525457232/ref=sr_1_1?dchild=1&keywords=winnie+the+pooh+books&qid=1594680243&sr=8-1",
     age: "8-12",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "The Tale of Peter Rabbit",
     author: "Beatrix Potter",
     img_url: "https://api.time.com/wp-content/uploads/2015/01/best-children-books-1-016.jpg?quality=85&w=422",
     description: "In this British classic, a rebellious rabbit gets himself into lots of trouble but somehow makes it home safe.",
     buy: "https://www.amazon.com/Tale-Peter-Rabbit-Beatrix-Potter/dp/0723247706/ref=sr_1_2?crid=2LLPMX00AF3M4&dchild=1&keywords=the+tale+of+peter+rabbit&qid=1594680365&sprefix=the+tale+of+%2Caps%2C146&sr=8-2",
     age: "3-7",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "Mike Mulligan and His Steam Shovel",
     author: "Virginia Lee Burton",
     img_url: "https://api.time.com/wp-content/uploads/2015/01/best-children-books-1-021.jpg?quality=85&w=610",
     description: "A man and his steam shovel prove their worth in this testament to friendship and hard work.",
     buy: "https://www.amazon.com/Mike-Mulligan-His-Steam-Shovel/dp/0395259398/ref=sr_1_1?crid=1CKFMBJRTPAHC&dchild=1&keywords=mike+mulligan+and+his+steam+shovel&qid=1594680429&sprefix=mike%2Caps%2C150&sr=8-1",
     age: "4-7",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "Go Dog, Go",
     author: "P.D. Eastman",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/43-best-childrens-books-go-dog-go.jpg?quality=85&w=408",
     description: "This book for beginning readers manages to convey some very deep lessons in an accessible form.",
     buy: "https://www.amazon.com/Dog-Read-Myself-Beginner-Books/dp/0394800206/ref=sr_1_1?crid=12RLCLJRXJ42R&dchild=1&keywords=go+do+go&qid=1594680504&s=books&sprefix=go+do+%2Caps%2C144&sr=1-1",
     age: "3-7",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "Mama Don't Allow",
     author: "Thacher Hurd",
     img_url: "https://api.time.com/wp-content/uploads/2015/01/best-children-books-1-013.jpg?quality=85&w=685",
     description: "A badger loves to play his saxophone, but his mom won't put up with his music, so he finds some alligator pals who dig it.",
     buy: "https://www.amazon.com/Mama-Dont-Allow-Thacher-Hurd/dp/0064430782/ref=sr_1_1?crid=12T3OVUM1Q91G&dchild=1&keywords=mama+dont+allow&qid=1594680612&s=books&sprefix=mama+dont+%2Cstripbooks%2C135&sr=1-1",
     age: "4-8",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "Eloise",
     author: "Kay Thompson",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/40-best-childrens-books-eloise.jpg?quality=85&w=401",
     description: "An adventurous and confident young girl lives on the top floor of a New York hotel with her nanny, a dog, and a turtle.",
     buy: "https://www.amazon.com/Eloise-Book-Precocious-Grown-Ups/dp/067122350X/ref=sr_1_1?dchild=1&keywords=eloise&qid=1594680697&s=books&sr=1-1",
     age: "6-9",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "Bread and Jam for Frances",
     author: "Russell Hoban",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/32-best-childrens-books-bread-and-jam-for-frances.jpg?quality=85&w=441",
     description: "An extremely picky eater expands her diet beyond bread and jam and discovers the pleasure of a well-rounded meal.",
     buy: "https://www.amazon.com/Bread-Frances-Russell-Hoban-1964-09-09/dp/B01FGKUQRA/ref=sr_1_2?crid=3HDUPLQY6OCL2&dchild=1&keywords=bread+and+jam+for+frances&qid=1594680770&s=books&sprefix=bread+and+%2Cstripbooks%2C147&sr=1-2",
     age: "4-8",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "Amelia Bedelia",
     author: "Peggy Parish",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/29-best-childrens-books-amelia-bedelia.jpg?quality=85&w=395",
     description: "A highly literal housekeeper charmingly misinterprets everyday language.",
     buy: "https://www.amazon.com/Amelia-Bedelia-Peggy-Parish/dp/0062209698/ref=sr_1_2?crid=26OZA607G0HYE&dchild=1&keywords=amelia+bedelia&qid=1594680870&s=books&sprefix=amelia%2Cstripbooks%2C146&sr=1-2",
     age: "4-8",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "Love You Forever",
     author: "Robert Munsch",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/64-best-childrens-books.jpg?quality=85&w=550",
     description: "A mother cradles her sleeping child and sings him a lullaby, and keeps up the habit for years and years.",
     buy: "https://www.amazon.com/Love-You-Forever-Robert-Munsch/dp/0920668372/ref=sr_1_1?dchild=1&keywords=love+you+forever&qid=1594680955&s=books&sr=1-1",
     age: "4-7",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "Animalia",
     author: "Graeme Base",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/30-best-childrens-books-animalia.jpg?quality=85&w=410",
     description: "An intricate, animal-themed alphabet book that transcends the limitations of its form.",
     buy: "https://www.amazon.com/Animalia-Graeme-Base/dp/0810919397/ref=sr_1_1?dchild=1&keywords=animalia&qid=1594681023&s=books&sr=1-1",
     age: "3-7",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "In the Night Kitchen",
     author: "Maurice Sendak",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/55-best-childrens-books-in-the-night-kitchen.jpg?quality=85&w=426",
     description: "A child drifts through a dream world where bakers are preparing a tasty cake.",
     buy: "https://api.time.com/wp-content/uploads/2014/09/55-best-childrens-books-in-the-night-kitchen.jpg?quality=85&w=426",
     age: "4-8",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "Diary of a Wombat",
     author: "Jackie French",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/38-best-childrens-books-diary-of-a-wombat.jpg?quality=85&w=790",
     description: "Kids learn the daily routine of a lazy wombat by reading his diary entries.",
     buy: "https://www.amazon.com/Diary-Wombat-Jackie-French/dp/054707669X/ref=sr_1_1?crid=30Y57FG113WYJ&dchild=1&keywords=diary+of+a+wombat&qid=1594681365&s=books&sprefix=diary+%2Cstripbooks%2C146&sr=1-1",
     age: "4-7",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "Tikki Tikki Tembo",
     author: "Arlene Mosel",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/99-best-childrens-books-tikki-tikki-tembo.jpg?quality=85&w=468",
     description: "In this retelling of a folktale, a young boy with a ridiculously long name falls into a well.",
     buy: "https://www.amazon.com/Tikki-Tembo-Arlene-Mosel/dp/0312367481/ref=sr_1_1?crid=3SS1UZ5B6AFGI&dchild=1&keywords=tikki+tikki+tembo+book&qid=1594681437&s=books&sprefix=tik%2Cstripbooks%2C145&sr=1-1",
     age: "4-8",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "Extra Yarn",
     author: "Mac Barnett",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/42-best-childrens-books-extra-yarn.jpg?quality=85&w=699",
     description: "Annabelle and her box of yarn bring color to a colorless town.",
     buy: "https://www.amazon.com/Extra-Yarn-Mac-Barnett/dp/0061953385/ref=sr_1_1?crid=3I6UWE1P1EIRW&dchild=1&keywords=extra+yarn&qid=1594681507&s=books&sprefix=extra+%2Cstripbooks%2C146&sr=1-1",
     age: "4-8",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "Good Dog, Carl",
     author: "Alexandra Day",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/44-best-childrens-books-good-dog-carl.jpg?quality=85&w=348",
     description: "A baby romps around his house with the family dog, who cleans everything up before Mom notices.",
     buy: "https://www.amazon.com/Good-Dog-Carl-Classic-Board/dp/0689807481/ref=sr_1_1?crid=2LZVIAEI9CWNP&dchild=1&keywords=good+dog+carl&qid=1594681615&s=books&sprefix=good+do%2Cstripbooks%2C142&sr=1-1",
     age: "1-4",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "My Father's Dragon",
     author: "Ruth Stiles Gannett",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/66-best-childrens-books-my-fathers-dragon.jpg?quality=85&w=404",
     description: "A child adventures to a dangerous island to free a baby dragon.",
     buy: "https://www.amazon.com/Fathers-Dragon-Ruth-Stiles-Gannett/dp/0486492834/ref=sr_1_1_sspa?crid=32ZLL72NL9D65&dchild=1&keywords=my+fathers+dragon&qid=1594681722&s=books&sprefix=my+fathers+%2Cstripbooks%2C140&sr=1-1-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUEyUzI0NUY3VTZFUklCJmVuY3J5cHRlZElkPUEwMDIxNDgyMVJISTVPMjM4TEdJUiZlbmNyeXB0ZWRBZElkPUEwNjY3NTM0MVBUWEpJUDU4VTE1QSZ3aWRnZXROYW1lPXNwX2F0ZiZhY3Rpb249Y2xpY2tSZWRpcmVjdCZkb05vdExvZ0NsaWNrPXRydWU=",
     age: "6-10",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "Hello, Rock",
     author: "Roger Bradfield",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/49-best-childrens-books-hello-rock.jpg?quality=85&w=506",
     description: "A child happily converses with a rock in this celebration of imagination.",
     buy: "https://www.amazon.com/Hello-Rock-Roger-Bradfield/dp/1930900643/ref=sr_1_1?dchild=1&keywords=hello+rock&qid=1594682527&s=books&sr=1-1",
     age: "5-8",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "The Gruffalo",
     author: "ulia Donaldson",
     img_url: "https://api.time.com/wp-content/uploads/2015/01/the-gruffalo.jpg?quality=85&w=450",
     description: "A clever mouse invents a fearsome creature to protect himself from predators in the woods—but is the Gruffalo really imaginary?",
     buy: "https://www.amazon.com/Gruffalo-Julia-Donaldson/dp/0142403873/ref=sr_1_1?crid=39HY7AK8Q2LTN&dchild=1&keywords=the+gruffalo&qid=1594682615&s=books&sprefix=the+gru%2Cstripbooks%2C144&sr=1-1",
     age: "3-7",
     user_id:user.id,
    category_id:category.id
    
     },
   {
     title: "Sylvester and the Magic Pebble",
     author: "William Steig",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/75-best-childrens-books-sylvester-and-the-magic-pebble.jpg?quality=85&w=435",
     description: "A donkey finds a pebble that makes all his wishes come true, but accidentally turns himself to stone",
     buy: "https://www.amazon.com/Sylvester-Magic-Pebble-William-Steig/dp/1442435607/ref=sr_1_2?crid=C3NPIS9FBRF6&dchild=1&keywords=sylvester+and+the+magic+pebble+by+william+steig&qid=1594682756&s=books&sprefix=syl%2Cstripbooks%2C143&sr=1-2",
     age: "3-7",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "The Important Book",
     author: "Margaret Wise Brown",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/54-best-childrens-books-the-important-book.jpg?quality=85&w=404",
     description: "A curious game asks children to name the most important quality about the different objects they see.",
     buy: "https://www.amazon.com/Important-Book-Margaret-Wise-Brown/dp/0064432270/ref=sr_1_1?crid=5DCMUMW1YUTJ&dchild=1&keywords=the+important+book&qid=1594682956&s=books&sprefix=the+impor%2Cstripbooks%2C141&sr=1-1",
     age: "4-8",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "Jazz",
     author: "Walter Dean Myers",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/57-best-childrens-books-jazz.jpg?quality=85&w=412",
     description: "These jazz poems and their vivid illustrations capture the energy of the genre.",
     buy: "https://www.amazon.com/Jazz-Walter-Dean-Myers/dp/0823421732/ref=sr_1_1?dchild=1&keywords=Jazz%2C+by+Walter+Dean+Myers&qid=1594683188&s=books&sr=1-1",
     age: "4-7",
     user_id:user.id,
    category_id:category.id
    
   },
   {
     title: "The Stranger",
     author: "Chris Van Allsburg",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/92-best-childrens-books-the-stranger.jpg?quality=85&w=500",
     description: "A suspenseful farm tale about a mystery visitor who seems to control the weather.",
     buy: "https://www.amazon.com/Stranger-Chris-Van-Allsburg/dp/0395423317/ref=sr_1_5?dchild=1&keywords=the+stranger&qid=1594733524&s=books&sr=1-5",
     age: "4-7",
     user_id:user.id,
     category_id:category.id
   },
   {
     title: "The Very Hungry Caterpillar",
     author: "Eric Carle",
     img_url: "https://api.time.com/wp-content/uploads/2015/01/best-children-books-1-020.png?w=812",
     description: "A cheery caterpillar nibbles his way through an assortment of colorful foods and transforms into a butterfly.",
     buy: "https://www.amazon.com/Very-Hungry-Caterpillar-Eric-Carle/dp/0399226907/ref=sr_1_1?crid=33Y3WYDP8RMA2&dchild=1&keywords=the+very+hungry+caterpillar&qid=1594733640&s=books&sprefix=the+very+%2Cstripbooks%2C149&sr=1-1",
     age: "3-5",
     user_id:user.id,
     category_id:category.id
   },
   {
     title: "Elephant and Piggie (series)",
     author: "Mo Willems",
     img_url: "https://api.time.com/wp-content/uploads/2015/01/best-children-books-1-022.jpg?quality=85&w=408",
     description: "Two best friends learn all kind of lessons in this series of low-stakes moral dilemmas.",
     buy: "https://www.amazon.com/We-Are-Book-Elephant-Piggie/dp/1423133080/ref=sr_1_1_sspa?crid=3DS6620JAIUIL&dchild=1&keywords=we+are+in+a+book&qid=1594733750&s=books&sprefix=we+are+in+%2Cstripbooks%2C141&sr=1-1-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUEzUk03S1NIWkZCWTNSJmVuY3J5cHRlZElkPUEwMjA4NDc1MVc5UVdOWU1QTFpRRCZlbmNyeXB0ZWRBZElkPUEwNjEyMTc3M0lSMVBGSzROM0YyViZ3aWRnZXROYW1lPXNwX2F0ZiZhY3Rpb249Y2xpY2tSZWRpcmVjdCZkb05vdExvZ0NsaWNrPXRydWU=",
     age: "3-5",
     user_id:user.id,
     category_id:category.id

   },
   {
     title: "Jenny and the Cat Club",
     author: " Esther Averill",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/58-best-childrens-books-jenny-and-the-cat-club.jpg?quality=85&w=394",
     description: "A cat named Jenny tries to finagle her way into the glamorous Cat Club.",
     buy: "https://www.amazon.com/Jenny-Originally-Titled-Times-Linsky/dp/B000NZ1BVE/ref=sr_1_8?crid=3KDS9EI7ZI9YI&dchild=1&keywords=jenny+and+the+cat+club&qid=1594733855&s=books&sprefix=jeny+and+%2Cstripbooks%2C142&sr=1-8",
     age: "3-7",
     user_id:user.id,
     category_id:category.id

   },
   {
     title: "The Runaway Bunny",
     author: "Margaret Wise Brown",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/89-best-childrens-books-the-runaway-bunny.jpg?quality=85&w=660",
     description: "A wandering bunny and his loving mother play hide-and-seek in this classic",
     buy: "https://www.amazon.com/Runaway-Bunny-Margaret-Wise-Brown/dp/0061074292/ref=sr_1_1?crid=23FXFAZOJ83N9&dchild=1&keywords=the+runaway+bunny&qid=1594734073&s=books&sprefix=the+run%2Cstripbooks%2C141&sr=1-1",
     age: "3-7",
     user_id:user.id,
     category_id:category.id
   },
   {
     title: "Pippi Longstocking (series)",
     author: "Astrid Lindgren",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/71-best-childrens-books-pippi-longstocking.jpg?quality=85&w=388",
     description: "An impulsive, fearless and charming girl gets herself into lots of entertaining mischief.",
     buy: "https://www.amazon.com/Longstocking-Turtleback-Library-Lindgren-1976-05-01/dp/B01FIZAD9O/ref=sr_1_7?crid=2JK6KJ7ZANZM7&dchild=1&keywords=pippi+longstocking&qid=1594734172&s=books&sprefix=pip%2Cstripbooks%2C144&sr=1-7",
     age: "4-8",
     user_id:user.id,
     category_id:category.id

   },
   {
     title: "Journey",
     author: "Aaron Becker",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/59-best-childrens-books-journey.jpg?quality=85&w=624",
     description: "A girl armed with a magic crayon draws to escape her boring, colorless world.",
     buy: "https://www.amazon.com/Journey-Aaron-Beckers-Wordless-Trilogy/dp/0763660531/ref=sr_1_1?dchild=1&keywords=journey&qid=1594734320&s=books&sr=1-1",
     age: "4-8",
     user_id:user.id,
     category_id:category.id

   },
   {
     title: "Green Eggs and Ham",
     author: "Dr. Seuss",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/46-best-childrens-books-green-eggs-and-ham.jpg?quality=85&w=398",
     description: "Everyone knows this poem singing the praises of an unlikely meal, but it never gets old.",
     buy: "https://www.amazon.com/Green-Eggs-Ham-Dr-Seuss/dp/0394800168/ref=sr_1_1?crid=2M6201Y8ULQYV&dchild=1&keywords=green+eggs+and+ham+book+by+dr.+seuss&qid=1594734408&s=books&sprefix=green+%2Cstripbooks%2C147&sr=1-1",
     age: "3-7",
     user_id:user.id,
     category_id:category.id
   },
   {
     title: "The Red Balloon",
     author: "Albert Lamorisse",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/88-best-childrens-books-the-red-balloon.jpg?quality=85&w=381",
     description: "Vivid photographs help tell this story about a boy in Paris and his best friend, a red balloon.",
     buy: "https://www.amazon.com/Red-Balloon-Albert-Lamorisse/dp/0385003439/ref=sr_1_1?crid=JEDVNVQKFSJB&dchild=1&keywords=the+red+balloon&qid=1594734882&s=books&sprefix=the+red+boll%2Cstripbooks%2C146&sr=1-1",
     age: "3-7",
     user_id:user.id,
     category_id:category.id
   },
   {
     title: "Little Owl's Night",
     author: "Divya Srinivasan",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/62-best-childrens-books-little-owls-night.jpg?quality=85&w=441",
     description: "This gorgeously illustrated book teaches kids that night is not to be feared, and is beautiful in its own right.",
     buy: "https://www.amazon.com/Little-Owls-Night-Divya-Srinivasan/dp/0670015792/ref=sr_1_1?crid=3AV19VG9PS0EF&dchild=1&keywords=little+owls+night&qid=1594734968&s=books&sprefix=little+owls+%2Cstripbooks%2C140&sr=1-1",
     age: "3-5",
     user_id:user.id,
     category_id:category.id
   },
   {
     title: "Paddle-to-the-Sea",
     author: "Holling Clancy Holling",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/70-best-childrens-books-paddle-to-the-sea.jpg?quality=85&w=406",
     description: "A young boy carves a figure in a small canoe and sends him on a journey from the Great Lakes to the Atlantic Ocean.",
     buy: "https://www.amazon.com/Paddle-Sea-Sandpiper-Books/dp/0395292034/ref=sr_1_1?crid=1K6LK8LCJS00T&dchild=1&keywords=paddle+to+the+sea&qid=1594735058&s=books&sprefix=padd%2Cstripbooks%2C139&sr=1-1",
     age: "10-12",
     user_id:user.id,
     category_id:category.id
   },
   {
     title: "Katy and the Big Snow",
     author: "Virginia Lee Burton",
     img_url: "https://api.time.com/wp-content/uploads/2015/01/best-children-books-1-005.jpg?quality=85&w=612",
     description: "A snowplow finally gets her chance to impress the townspeople on the first big snow day of the year",
     buy: "https://www.amazon.com/Katy-Big-Snow-board-book/dp/0547371454/ref=sr_1_1?crid=3STZ7O9V9OUMK&dchild=1&keywords=katy+and+the+big+snow+by+virginia+lee+burton&qid=1594735152&s=books&sprefix=katy%2Cstripbooks%2C142&sr=1-1",
     age: "0-3",
     user_id:user.id,
     category_id:category.id
   },
   {
     title: "A Sick Day for Amos McGee",
     author: "Philip C. Stead",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/73-best-childrens-books-a-sick-day-for-amos-mcgee.jpg?quality=85&w=608",
     description: "An elderly man makes daily visits to his animal pals at the zoo, and they return the favor when he falls sick.",
     buy: "https://www.amazon.com/Sick-Day-Amos-McGee/dp/1596434023/ref=sr_1_1?crid=17R3SCQE9IICM&dchild=1&keywords=a+sick+day+for+amos+mcgee&qid=1594735250&s=books&sprefix=a+sick+%2Cstripbooks%2C136&sr=1-1",
     age: "2-6",
     user_id:user.id,
     category_id:category.id
   },
   {
     title: "Slow Loris",
     author: "Alexis Deacon",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/74-best-childrens-books-slow-loris.jpg?quality=85&w=500",
     description: "This slow-moving animal seems very lazy during his days at the zoo, but turns out to have a wild nightlife.",
     buy: "https://www.amazon.com/Slow-Loris-Alexis-Deacon/dp/1929132271/ref=sr_1_1?crid=3DU4F1BXDHCOJ&dchild=1&keywords=slow+loris&qid=1594735335&s=books&sprefix=slow+lo%2Cstripbooks%2C132&sr=1-1",
     age: "5-6",
     user_id:user.id,
     category_id:category.id
   },
   {
     title: "The Color Kittens",
     author: "Margaret Wise Brown",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/77-best-childrens-books-the-color-kittens.jpg?quality=85&w=373",
     description: "Two kittens with green eyes manage to invent all the colors in the world.",
     buy: "https://www.amazon.com/Color-Kittens-Little-Golden-Book/dp/0307021416/ref=sr_1_1?crid=13B27PPAMGUCE&dchild=1&keywords=the+color+kittens&qid=1594735433&s=books&sprefix=the+color+kitt%2Cstripbooks%2C142&sr=1-1",
     age: "3-7",
     user_id:user.id,
     category_id:category.id
   },
   {
     title: "The Fantastic Flying Books of Mr. Morris Lessmore",
     author: "William Joyce",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/78-best-childrens-books-the-fantastic-flying-books-of-mr-morris-lessmore.jpg?quality=85&w=785",
     description: "This tale affirms that no matter the medium—printed page or electronic screen—we will always be gripped by stories.",
     buy: "amazon.com/Fantastic-Flying-Books-Morris-Lessmore/dp/1442457023/ref=sr_1_1?crid=1X2SJ4J8342I5&dchild=1&keywords=the+fantastic+flying+books+of+mr.+morris+lessmore&qid=1594735544&s=books&sprefix=the+fantastic+%2Cstripbooks%2C139&sr=1-1",
     age: "4-8",
     user_id:user.id,
     category_id:category.id
   },
   {
     title: "Oh, The Places You'll Go!",
     author: "Dr. Seuss",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/68-best-childrens-books-oh-the-places-youll-go.jpg?quality=85&w=404",
     description: "The optimistic poem is perfect for anyone about to head into a new world, whether that's middle school or the job market.",
     buy: "https://www.amazon.com/Oh-Places-Youll-Dr-Seuss/dp/0679805273/ref=sr_1_1?crid=37O5SHCZD1BGJ&dchild=1&keywords=oh+the+places+you%27ll+go+by+dr.+seuss&qid=1594735646&s=books&sprefix=oh+%2Cstripbooks%2C134&sr=1-1",
     age: "4-8",
     user_id:user.id,
     category_id:category.id
   },
   {
     title: "The Little Engine That Could",
     author: "Watty Piper",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/81-best-childrens-books-the-little-engine-that-could.jpg?quality=85&w=624",
     description: "This tale of self-motivation has echoed through generations: I think I can—I think I can...",
     buy: "https://www.amazon.com/Little-Engine-Could-Original-Classic/dp/0448405202/ref=sr_1_1?crid=2W8VD5WQKRW83&dchild=1&keywords=the+little+engine+that+could&qid=1594735765&s=books&sprefix=the+little+%2Cstripbooks%2C143&sr=1-1",
     age: "3-7",
     user_id:user.id,
     category_id:category.id
   },
   {
     title: "Cars and Trucks and Things That Go",
     author: "Richard Scarry",
     img_url: "https://api.time.com/wp-content/uploads/2015/01/best-children-books-1-011.jpg?quality=85&w=433",
     description: "Incredibly detailed spreads show every vehicle known to man—and plenty of whimsical inventions as yet unknown to man.",
     buy: "https://www.amazon.com/Richard-Scarrys-Cars-Trucks-Things/dp/0307157857/ref=sr_1_1?crid=2XALD2VC1OI7F&dchild=1&keywords=cars+and+trucks+and+things+that+go&qid=1594735861&s=books&sprefix=cars+%2Cstripbooks%2C136&sr=1-1",
     age: "3-7",
     user_id:user.id,
     category_id:category.id
   },
   {
     title: "The New Kid on the Block",
     author: "Jack Prelutsky",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/85-best-childrens-books-the-new-kid-on-the-block.jpg?quality=85&w=438",
     description: "Poems full of sonic play and surreal imagery, taking on subject matters like jellyfish stew and a bouncing mouse.",
     buy: "https://www.amazon.com/New-Kid-Block-Jack-Prelutsky/dp/0062239503/ref=sr_1_1?crid=2TWW0DJX1JRW&dchild=1&keywords=the+new+kid+on+the+block+jack+prelutsky&qid=1594735989&s=books&sprefix=the+new+kid+on+the+%2Cstripbooks%2C139&sr=1-1",
     age: "6-10",
     user_id:user.id,
     category_id:category.id
   },
   {
     title: "How Rocket Learned to Read",
     author: "Tad Hills",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/50-best-childrens-books-how-rocket-learned-to-read.jpg?quality=85&w=453",
     description: "A sleepy dog's nap is interrupted by a bird who wants to teach him to read, and he soon learns to love it.",
     buy: "https://www.amazon.com/How-Rocket-Learned-Read-Hills/dp/0375858997/ref=sr_1_2?crid=2IJ8KYKMIUE5A&dchild=1&keywords=how+rocket+learned+to+read&qid=1594736101&s=books&sprefix=how+rocket+%2Cstripbooks%2C136&sr=1-2",
     age: "3-7",
     user_id:user.id,
     category_id:category.id
   },
   {
     title: "The Stinky Cheese Man and Other Fairly Stupid Tales",
     author: "Jon Scieszka",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/90-best-childrens-books-the-stinky-cheese-man.jpg?quality=85&w=463",
     description: "A irreverent, razor-sharp parody of the fairy tale form; it also manages to make metafiction kid-friendly",
     buy: "https://www.amazon.com/Stinky-Cheese-Other-Fairly-Stupid/dp/067084487X/ref=sr_1_1?dchild=1&keywords=the+stinky+cheese+man&qid=1594736432&s=books&sr=1-1",
     age: "3-7",
     user_id:user.id,
     category_id:category.id
   },
   {
     title: "The Story of Babar",
     author: "Jean de Brunhoff",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/91-best-childrens-books-the-story-of-babar.jpg?quality=85&w=407",
     description: "The beloved French elephant travels from the jungle to the big city and back, just in time to be crowned king of the elephant kingdom.",
     buy: "https://www.amazon.com/Story-Babar-Little-Elephant/dp/0394805755/ref=sr_1_1?crid=TT31K1HQ3SQB&dchild=1&keywords=the+story+of+babar&qid=1594736637&s=books&sprefix=the+story+of+b%2Cstripbooks%2C140&sr=1-1",
     age: "4-8",
     user_id:user.id,
     category_id:category.id
   },
   {
     title: "The Three Questions",
     author: "Jon J. Muth",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/93-best-childrens-books-the-three-questions.jpg?quality=85&w=707",
     description: "This watercolor adaptation of a Tolstoy fable squeezes the original's philosophy into a kid-sized portion.",
     buy: "https://www.amazon.com/Three-Questions-Based-story-Tolstoy/dp/0439199964/ref=sr_1_1?crid=68Y7MILJ61IJ&dchild=1&keywords=the+three+questions&qid=1594736896&s=books&sprefix=the+three+qu%2Cstripbooks%2C138&sr=1-1",
     age: "4-8",
     user_id:user.id,
     category_id:category.id
   },
   {
     title: "Grandfather's Journey",
     author: "Allen Say",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/45-best-childrens-books-grandfathers-journey.jpg?quality=85&w=456",
     description: "The author chronicles his grandfather's journey from Japan to California and back again, pairing it with delicate, warm art.",
     buy: "https://www.amazon.com/Grandfathers-Journey-Allen-Say/dp/0547076800/ref=sr_1_1?crid=2E46MJW87MESH&dchild=1&keywords=grandfathers+journey&qid=1594736982&s=books&sprefix=grandfathers%2Cstripbooks%2C144&sr=1-1",
     age: "4-8",
     user_id:user.id,
     category_id:category.id
   },
   {
     title: "We Are the Ship",
     author: "Kadir Nelson",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/100-best-childrens-books-we-are-the-ship.jpg?quality=85&w=557",
     description: "This inspiring history of the Negro Leagues honors baseball greats like Satchel Paige and Josh Gibson.",
     buy: "https://www.amazon.com/We-Are-Ship-League-Baseball/dp/0786808322/ref=sr_1_1?crid=1TP7J9783FZEP&dchild=1&keywords=we+are+the+ship&qid=1594737062&s=books&sprefix=we+are+the+sh%2Cstripbooks%2C132&sr=1-1",
     age: "8-12",
     user_id:user.id,
     category_id:category.id
   },
   {
     title: "We're Going on a Bear Hunt",
     author: "Helen Oxenbury and Michael Rosen",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/101-best-childrens-books-were-going-on-a-bear-hunt.jpg?quality=85&w=614",
     description: "A family goes off to hunt a bear and the bear does not take kindly to this.",
     buy: "https://www.amazon.com/Going-Anniversary-Modern-Classic-Hardcover/dp/B00QO6ZV08/ref=sr_1_3?crid=1FWMKKZ1Z6J1P&dchild=1&keywords=were+going+on+a+bear+hunt+book&qid=1594737161&s=books&sprefix=were+going+on+a+%2Cstripbooks%2C141&sr=1-3",
     age: "4-7",
     user_id:user.id,
     category_id:category.id
   },
   {
     title: "Arthur's Nose (series)",
     author: "Marc Brown",
     img_url: "https://api.time.com/wp-content/uploads/2015/01/best-children-books-1-017.jpg?quality=85&w=376",
     description: "Little known fact: Arthur, the popular aardvark, used to have a much longer nose, and he wasn't too pleased with it",
     buy: "https://www.amazon.com/Arthurs-Nose-Arthur-Adventure/dp/0316111937/ref=sr_1_2?crid=3B5F1XDLKCIB2&dchild=1&keywords=arthurs+nose&qid=1594737288&s=books&sprefix=arthurs+%2Cstripbooks%2C136&sr=1-2",
     age: "4-8",
     user_id:user.id,
     category_id:category.id
   },
   {
     title: "If You Give a Mouse a Cookie",
     author: "Laura Joffe Numeroff",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/52-best-childrens-books-if-you-give-a-mouse-a-cookie.jpg?quality=85&w=498",
     description: "This playful parable of a greedy mouse shows kids that every cause has an effect.",
     buy: "https://www.amazon.com/You-Give-Mouse-Cookie-Book/dp/0060245867/ref=sr_1_1?crid=1JYG5IMAVZ1XR&dchild=1&keywords=if+you+give+a+mouse+a+cookie&qid=1594737407&s=books&sprefix=if+you+%2Cstripbooks%2C138&sr=1-1",
      age: "4-8",
      user_id:user.id,
     category_id:category.id
   },
   {
     title: "Sayonara, Mrs. Kackleman",
     author: "Maira Kalman",
     img_url: "https://api.time.com/wp-content/uploads/2015/01/best-children-books-1-019.jpg?quality=85&w=453",
     description: "To avoid piano teacher Mrs. Kackleman, siblings Alexander and Lulu embark on a chaotic, parent-free journey to Japan.",
     buy: "https://www.amazon.com/Sayonara-Mrs-Kackleman-Maira-Kalman/dp/0140541594/ref=sr_1_1?crid=1Q2PNUJTOM8AN&dchild=1&keywords=sayonara+mrs+kackleman&qid=1594737513&s=books&sprefix=sayon%2Cstripbooks%2C140&sr=1-1",
     age: "2-3",
     user_id:user.id,
     category_id:category.id
   },
   {
     title: "Miss Nelson is Missing",
     author: "Harry Allard",
     img_url: "https://api.time.com/wp-content/uploads/2015/01/miss-nelson.png?w=324",
     description: "Miss Nelson goes missing, and because her wildly misbehaved class can't handle the cruel substitute teacher, they seek her whereabouts.",
     buy: "https://www.amazon.com/Miss-Nelson-Missing-Harry-Allard/dp/0395401461/ref=sr_1_1?crid=3M0P3MC9GEQ1V&dchild=1&keywords=miss+nelson+is+missing&qid=1594737713&s=books&sprefix=miss+ne%2Cstripbooks%2C138&sr=1-1",
     age: "4-7",
     user_id:user.id,
     category_id:category.id
   },
   {
     title: "Lilly's Purple Plastic Purse",
     author: "Kevin Henkes",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/61-best-childrens-books-lillys-purple-plastic-purse.jpg?quality=85&w=447",
     description: "In this cautionary tale that keeps its sense of humor, Lilly acts rashly in school and soon regrets it.",
     buy: "https://www.amazon.com/Lillys-Purple-Plastic-Purse-Henkes/dp/0688128971/ref=sr_1_1?crid=15L0D9TCDB569&dchild=1&keywords=lillys+purple+plastic+purse+by+kevin+henkes&qid=1594737814&s=books&sprefix=lillys%2Cstripbooks%2C140&sr=1-1",
     age: "4-8",
     user_id:user.id,
     category_id:category.id
   },

   {
     title: "Alligator Pie",
     author: "Dennis Lee",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/28-best-childrens-books-alligator-pie.jpg?quality=85&w=417",
     description: "A Canadian classic chock full of playful rhyming verse.",
     buy: "https://www.amazon.com/Alligator-Pie-Other-Poems-Treasury-ebook/dp/B08425G3M9/ref=sr_1_2?dchild=1&keywords=alligator+pie&qid=1594738335&s=books&sr=1-2",
     age: "4-7",
     user_id:user.id,
     category_id:category.id
   },
   {
     title: "Everyone Poops",
     author: "Taro Gomi",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/41-best-childrens-books-everyone-poops.jpg?quality=85&w=495",
     description: "A treatise on that basic bodily function, told with humor and poise.",
     buy: "https://www.amazon.com/Everyone-Turtleback-School-Library-Binding/dp/0613685725/ref=sr_1_1?dchild=1&keywords=everyone+poops&qid=1594738520&s=books&sr=1-1",
     age: "5-6",
     user_id:user.id,
     category_id:category.id
   },
   {
     title: "Rain Makes Applesauce",
     author: "Julian Scheer",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/72-best-childrens-books-rain-makes-applesauce.jpg?quality=85&w=382",
     description: "Filled with beautiful, dense illustrations, this intricate work reveals itself slowly and rewards rereading.",
     buy: "https://www.amazon.com/Rain-Makes-Applesauce-Julian-Scheer/dp/0823400913/ref=sr_1_1?crid=2BR04YBB01FCU&dchild=1&keywords=rain+makes+applesauce&qid=1594738613&s=books&sprefix=rain+makes+%2Cstripbooks%2C146&sr=1-1",
     age: "4-8",
     user_id:user.id,
     category_id:category.id
   },
   {
     title: "Lon Po Po",
     author: "Ed Young",
     img_url: "https://api.time.com/wp-content/uploads/2015/01/best-children-books-1-009.jpg?quality=85&w=456",
     description: "In this dark variant of Little Red Riding Hood, young sisters deliver swift justice to the big bad wolf.",
     buy: "https://www.amazon.com/Lon-Po-Red-Riding-Story-China/dp/0698113829/ref=sr_1_1?dchild=1&keywords=lon+popo&qid=1594738704&s=books&sr=1-1",
     age: "4-8",
     user_id:user.id,
     category_id:category.id
   },
   {
     title: "The Berenstain Bears (series)",
     author: "Stan & Jan Berenstain",
     img_url: "https://api.time.com/wp-content/uploads/2015/01/best-children-books-1-008.jpg?quality=85&w=558",
     description: "Each tale about this family of bears packs in a lesson about morality or health.",
     buy: "https://www.amazon.com/Berenstain-Bears-School-First-Books/dp/0394837363/ref=sr_1_1?crid=75AIUZTMCT3Q&dchild=1&keywords=the+berenstain+bears+go+to+school&qid=1594738826&s=books&sprefix=the+berenstain+bears+go%2Cstripbooks%2C137&sr=1-1",
     age: "3-7",
     user_id:user.id,
     category_id:category.id
   },
   {
     title: "Mr. Popper's Penguins",
     author: "Richard and Florence Atwater",
     img_url: "https://api.time.com/wp-content/uploads/2015/01/best-children-books-1-014.jpg?quality=85&w=377",
     description: "Mr. Popper dreams about polar adventure—and it comes right to his doorstep in the form of a dozen penguins.",
     buy: "https://www.amazon.com/Mr-Poppers-Penguins-Richard-Atwater/dp/0316058432/ref=sr_1_1?dchild=1&keywords=mr.+poppers+penguins&qid=1594738920&s=books&sr=1-1",
     age: "8-12",
     user_id:user.id,
     category_id:category.id
   },
   {
     title: "Library Lion",
     author: "Michelle Knudsen",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/60-best-childrens-books-library-lion.jpg?quality=85&w=406",
     description: "A lion might make for an unlikely library visitor, but this one learns to love his new literary hangout",
     buy: "https://www.amazon.com/Library-Lion-Michelle-Knudsen/dp/076363784X/ref=sr_1_1?dchild=1&keywords=Library+Lion&qid=1594739005&s=books&sr=1-1",
     age: "4-8",
     user_id:user.id,
     category_id:category.id
   },
   {
     title: "The Real Mother Goose",
     author: "Blanche Fisher Wright",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/87-best-childrens-books-the-real-mother-goose.jpg?quality=85&w=421",
     description: "This iconic book of nursery rhymes has stayed relevant nearly a century after it was first published.",
     buy: "https://www.amazon.com/Mother-Goose-Blanche-Fisher-Wright/dp/0590225170/ref=sr_1_2?crid=1SOJZWMK4BZIM&dchild=1&keywords=the+real+mother+goose&qid=1594739123&s=books&sprefix=the+real+%2Cstripbooks%2C149&sr=1-2",
     age: "4-8",
     user_id:user.id,
     category_id:category.id
   },
   {
     title: "Harry the Dirty Dog",
     author: "Gene Zion",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/48-best-childrens-books-harry-the-dirty-dog.jpg?quality=85&w=410",
     description: "Kids might be more eager to bathe after seeing this mischievous dog get so dirty his own family can't recognize him.",
     buy: "https://www.amazon.com/Harry-Dirty-Dog/dp/006443009X/ref=sr_1_1?dchild=1&keywords=harry+the+dirty+dog&qid=1594739223&s=books&sr=1-1",
     age: "4-8",
     user_id:user.id,
     category_id:category.id
   },
   {
     title: "Out of My Mind",
     author: "Sharon M. Draper",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/69-best-childrens-books-out-of-my-mind.jpg?quality=85&w=392",
     description: "Because she cannot talk, walk, or write, no one knows how brilliant 5th grader Melody is—until she finds a way to make her voice heard.",
     buy: "https://www.amazon.com/Out-My-Mind-Sharon-Draper/dp/1416971718/ref=sr_1_1?dchild=1&keywords=out+of+my+mind&qid=1594739312&s=books&sr=1-1",
     age: "10-12",
     user_id:user.id,
     category_id:category.id
   },
   {
     title: "The Poky Little Puppy",
     author: "Janette Sebring Lowrey",
     img_url: "https://api.time.com/wp-content/uploads/2014/09/86-best-childrens-books-the-poky-little-puppy.jpg?quality=85&w=387",
     description: "One curious puppy likes to dawdle and wander more than his siblings, and he learns a lesson about independence.",
     buy: "https://www.amazon.com/Poky-Little-Puppy-Golden-Classic/dp/0307021343/ref=sr_1_2?crid=1L2HF6MNW73ZH&dchild=1&keywords=the+poky+little+puppy&qid=1594739433&s=books&sprefix=the+poky+%2Cstripbooks%2C137&sr=1-2",
     age: "2-3",
     user_id:user.id,
     category_id:category.id
   },
   {
     title: "Pete the Cat (series)",
     author: "Eric Litwin",
     img_url: "https://api.time.com/wp-content/uploads/2015/01/best-children-books-1-012.jpg?quality=85&w=436",
     description: "Pete is a blue cat who loves to groove and never loses his cool, no matter what trouble he steps in.",
     buy: "https://www.amazon.com/Pete-Cat-Rocking-School-Shoes/dp/0061910244/ref=sr_1_1?crid=1UZ5XPZBC8YQR&dchild=1&keywords=pete+the+cat+rocking+in+my+school+shoes+book&qid=1594739532&s=books&sprefix=pete+the+cat+rockin%2Cstripbooks%2C140&sr=1-1",
     age: "4-8",
     user_id:user.id,
     category_id:category.id
   },
   {
     title: "Stellaluna",
     author: "Janell Cannon",
     img_url: "https://api.time.com/wp-content/uploads/2015/01/best-children-books-1-003.jpg?quality=85&w=559",
     description: "An orphaned baby bat experiences growing pains when she is raised by a family of birds.",
     buy: "amazon.com/Stellaluna-25th-Anniversary-Janell-Cannon/dp/0544874358/ref=sr_1_1?dchild=1&keywords=Stellaluna&qid=1594744744&s=books&sr=1-1",
     age: "4-7",
     user_id:user.id,
     category_id:category.id
  }
])