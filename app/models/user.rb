class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  has_many :movies
  has_many :comments
  validates :nickname, presence: true
  validates :genre_id, numericality: { other_than: 1 } 
  

end
