 class Article < ApplicationRecord
  validates :title, presence: true, length: {minimum: 140}
  validates :text, presence: true
  has_many :comments

  def subject
    title
  end

  def last_comment
    comments.last
  end
end
