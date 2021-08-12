class Keyword < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  belongs_to :user

  with_options presence: true do
    validates :word
    validates :instruction 
  end 

  validates :genre_id, numericality: { other_than: 1, message: "can't be blank" } 
end
