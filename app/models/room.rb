class Room < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :themes
  has_many :photos
end
