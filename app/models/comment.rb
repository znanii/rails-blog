class Comment < ApplicationRecord
  belongs_to :article
  validates :body, length: {minimum: 40}
end
