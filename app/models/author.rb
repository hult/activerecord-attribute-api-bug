class Author < ApplicationRecord
  has_many :posts # Can't cast MyStruct if we comment this out
  has_many :blogs, through: :posts
  has_many :readers, through: :blogs

  attribute :id, MyType.new
end
