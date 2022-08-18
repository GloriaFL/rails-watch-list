class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 6 }
  validates :movie, uniqueness: { scope: :list, message: "This movie is already in the list"}
  # validates :movie, presence: true, allow_blank: false
  # validates :list, presence: true, allow_blank: false
end
