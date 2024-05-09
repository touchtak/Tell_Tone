class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :viewer, dependent: :destroy
  has_one :creater, dependent: :destroy

  has_many :viewer_posts, dependent: :destroy
  has_many :creater_posts, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end
