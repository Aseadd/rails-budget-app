class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :payments
  has_many :categories

  validates :name, presence: true, length: { minimum: 2, maximum: 20 }
  validates :email, presence: true, length: { minimum: 2, maximum: 50 }
  validates :password, presence: true, length: { minimum: 2, maximum: 50 }
end
