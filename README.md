＃テーブル設計

## users テーブル

| Column               | Type    | Options                    |
| -------------------- | --------| -------------------------- |
| email                | string  | null:false, unique: true   |
| encrypted_password   | string  | null:false                 |
| nickname             | string  | null:false                 |
| genre_id             | integer | null:false                 |

### Association
- has_many :movies
- has_many :comments  



## movies テーブル

| Column               | Type      | Options                       |
| -------------------- | --------- | ----------------------------- |
| title                | string    | null:false                    |
| user                 | reference | null:false, foreign_key: true |
| director             | string    | null:false                    |
| starring             | string    | null:false                    |
| genre_id             | integer   | null:false                    |
| public_year_id       | integer   | null:false                    |
| favorite_scene_1     | text      | null:false                    |
| favorite_scene_2     | text      |                               |
| favorite_scene_3     | text      |                               |
| film_music           | string    |                               |
| artist_name          | string    |                               |
| memorandum           | text      | null:false                    |

### Association
- belongs_to :user
- has_many :comments



## comments テーブル

| Column               | Type      | Options                       |
| -------------------- | --------- | ----------------------------- |
| content              | text      | null:false                    |
| user                 | reference | null:false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :movie



## likes テーブル

| Column               | Type      | Options                       |
| -------------------- | --------- | ----------------------------- |
| movie                | reference | null:false, foreign_key: true |
| user                 | reference | null:false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :movie



## rooms テーブル

| Column               | Type      | Options                       |
| -------------------- | --------- | ----------------------------- |
| title                | string    | null:false                   |
| director             | string    | null:false                    |
| starring             | string    | null:false                    |
| genre_id             | integer   | null:false                    |
| public_year_id       | integer   | null:false                    |

### Association
- has_many :comments  
