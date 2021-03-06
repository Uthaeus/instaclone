class User < ApplicationRecord

  validates :user_name, presence: true, length: { minimum: 4, maximum: 20 }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
end
