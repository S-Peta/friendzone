class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :messages, dependent: :destroy
  has_many :events, dependent: :destroy


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\.[a-zA-Z]+\z/, message: "Invalid email format" }
  validates :encrypted_password, presence: true, length: { minimum: 6 }
  validates :nickname, presence: true
end
