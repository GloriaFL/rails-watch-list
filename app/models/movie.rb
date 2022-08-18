class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :bookmarks

  validates :title, uniqueness: true, presence: true, allow_blank: false
  validates :overview, uniqueness: true, presence: true, allow_blank: false

end
