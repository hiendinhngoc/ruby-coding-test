class User < ApplicationRecord
  has_many :histories, independent: :destroy
  validates :email, uniqueness: true

  before_validation do
    self.email = email.downcase
  end
end
