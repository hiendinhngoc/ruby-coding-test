class User < ApplicationRecord
  has_many :histories
  validates :email, uniqueness: true

  before_validation do
    self.email = email.downcase
  end
end
