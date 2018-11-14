class Blog < ApplicationRecord
  has_many :posts
  has_many :authors, through: :posts

  attribute :id, MyType.new
end