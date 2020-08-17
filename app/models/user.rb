class User < ApplicationRecord
  has_many :wine_index_list_items

  validates :name, :username, :email, :password, presence: true

  has_secure_password
end
