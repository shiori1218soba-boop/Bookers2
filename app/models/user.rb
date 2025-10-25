class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_many :books, dependent: :destroy
  has_one_attached :profile_image

  validates :name, presence: true, length: { minimum: 1, maximum: 20 }
  validates :introduction, length: { maximum: 50 }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, 
         authentication_keys: [:name]
end
