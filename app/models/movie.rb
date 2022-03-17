class Movie < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  belongs_to :sub_genre
  belongs_to :public_year
  has_many :likes, dependent: :destroy
  has_many :likes_users, through: :likes, source: :user
  validates :title ,presence: true
  validates :image, presence: true
  validates :director ,presence: true
  validates :starring, presence: true
  validates :genre_id, presence: true
  validates :public_year_id, presence: true
  validates :favorite_scene_1, presence: true

  validates :genre_id, numericality:{ other_than: 1, message: "を選択してください" }
  
  validates :public_year_id, numericality:{ other_than: 1, message: "を選択してください"}
  
  def liked_by(user)
    Like.find_by(user_id: user.id, movie_id: id)
  end
  

end
