class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string     :title,       null: false
      t.references  :user,        null: false, foreign_key: true
      t.string     :director,    null: false
      t.string     :starring,    null: false
      t.integer    :genre_id,    null: false
      t.integer    :sub_genre_id
      t.integer    :public_year_id,  null: false
      t.text       :favorite_scene_1, null: false
      t.text       :favorite_scene_2
      t.text       :favorite_scene_3
      t.string     :film_music
      t.string     :artist_name
      t.text       :memorandum,       null: false
      t.timestamps
    end
  end
end
