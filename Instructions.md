# Start with the Database

## Articles Table
- Start by building an articles table and an articles model.

### Articles Resource
- Model file name: article.rb (individual article)
- Article model class name: Article
- Table name: articles

- Start by building the articles table (name: articles)

### To create a table, you need to create a migration file.
- rails generate migration create_articles (create an articles table)
- rails db:migrate (rails will only run migration files that were not previously run. This creates and updates tables from the migration files)
- rails db: rollback (roll back to the last migration and revert and newly created migrations)
- rails generate migration add_column_description_to_articles (add a column 'description' to articles)

- Now build a model for the article resource.