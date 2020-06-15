class User < ApplicationRecord
  has_and_belongs_to_many(:albums)
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
