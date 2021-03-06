class Keyword < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  belongs_to :user
  has_many   :tests, dependent: :destroy

  with_options presence: true do
    validates :word
    validates :instruction 
  end 

  validates :genre_id, numericality: { other_than: 1, message: "can't be blank" } 

  mount_uploader :audio, AudioUploader
end
