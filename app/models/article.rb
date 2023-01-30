# The helps us communicate with the data base. So we can collect all instances of Article from the database. Without specifying this class it's impossible to collect articles from th database.
class Article < ApplicationRecord
  validates :title, presence: true, length: {minimum: 6, maximum: 100}
  validates :description, presence: true, length: {minimum: 10, maximum: 100}
end