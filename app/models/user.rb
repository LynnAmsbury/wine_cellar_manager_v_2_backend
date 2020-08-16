class User < ApplicationRecord
  validates :name, :username, :email, :password, presence: true

  has_many :wine_index_lists

  has_secure_password
end
