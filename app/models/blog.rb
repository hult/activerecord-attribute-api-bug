class Blog < ApplicationRecord
  has_many :posts
  has_many :authors, through: :posts
  has_many :readers

  #attribute :id, MyType.new
end
