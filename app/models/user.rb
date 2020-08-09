class User < ApplicationRecord
  validates :name, :username, :email, :password, presence: true
end
