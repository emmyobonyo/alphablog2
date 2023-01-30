# Start with the Database

## Articles Table
- Start by building an articles table and an articles model.

### Articles Resource
- Model file name: article.rb (individual article)
- Article model class name: Article
- Table name: articles

1. Start by building the articles table (name: articles)

### To create a table, you need to create a migration file.
- rails generate migration create_articles (create an articles table)
- rails db:migrate (rails will only run migration files that were not previously run. This creates and updates tables from the migration files)
- rails db: rollback (roll back to the last migration and revert and newly created migrations)
- rails generate migration add_column_description_to_articles (add a column 'description' to articles)

2. Now build a model for the article resource. (Models are a way of communicating with your database from the rails application)

3. Create a few instances of the model in the database to work with

### Create Actions
- Article.create(title: 'First Article', description: 'Description of First Article') -- Create an article in the database
- @article = Article.new : Create a new empty article
- @article = Article.new
- Save some articles to your database using a variable

### Read Actions
- Article.find(2)
- Artcile.first
- Article.last
- @article = Article.find(2)
- @articles = Article.all : Get all articles.
- @article.title : Get the title of that article.
- @article.description: Get the description of the article.

### Update Actions
- @article.title = 'This is a new title'
- @article.description = 'This is a new description'

### Delete Actions
- @article = Article.last
- @article.destroy << This hits the database

4. Create validations in the Model
- @article.errors.full_messages : To get the errors

5. Perform read operations from the Frontend
- Show an individual article
- Define the show route
- rails routes --expanded
- Create a show action in the articles controller
- The show action in the controller interacts with the database through the model. Recieves information and now its free to use that information how it deems fit.
- Create a show view that is didplayed in the browser.



