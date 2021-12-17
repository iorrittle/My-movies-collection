class Movie < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  belongs_to :genre

  validates :title ,presence: true
  validates :director ,presence: true
  validates :starring, presence: true
  validates :genre_id, presence: true
  validates :public_year_id, presence: true
  validates :favorite_scene_1, presence: true

  validates :genre_id, numericality:{ other_than: 1, message: "can't be blank"}
  validates :public_year_id, numericality:{ other_than: 1, message: "can't be blank"}


end
