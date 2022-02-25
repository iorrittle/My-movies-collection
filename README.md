# アプリケーション名  
my movies collection

# アプリケーション概要
自分が観た映画をコレクションとして可視化できる。映画の情報を備忘録として記録すると同時に、作品の感想や考察を発信すること
ができる。
また、チャット機能を使って気軽に作品について仲間と語り合うことができるアプリケーション。

# URL  
 https://my-movies-collection-37188.herokuapp.com/

# 利用方法
## 　視聴した映画情報を投稿
・トップページのヘッダーからユーザーの新規登録を行う。
・ヘッダーの『Up movie』ボタンをクリックし、映画の内容(画像、タイトル、監督名、主演俳優名、ジャンル、公開年、
　お気に入りのシーン、感想）を入力し投稿する。
・投稿した映画情報はトップページ、また、「my collection ページ」へ表示される。
##  お気に入り機能    
・他のユーザーの投稿内容には『watchリストへ追加（観たい）』ボタンが表示される。
　クリックするとその投稿内容が「watchリスト」ページへ表示される。
## 特定の映画についてコミュニケーションをとる、チャット機能##
・ヘッダーのプルダウンから『movie chat』をクリックし、「movie chat ページ」へ遷移する。
・表示されている映画（チャットルーム）の中から気になる映画をクリックし、コメントを投稿する。
・自身のコメントのみ削除機能あり。

# アプリケーションを作成した背景
映画館で鑑賞した作品はパンフレットとしてコレクションできるけれど、サブスクリプションで鑑賞した
作品は記憶として残っていても形に残すことができない。自分が観た映画をコレクションとして
眺めることができたらと考えた。ブログ等に投稿するということも一つのコレクションではあるが、
「時間や手間を考えるとなかなか発信できない」と考える人は多いのではないかと思った。
映画を観終わったあとサクッと投稿できて、自分のコレクションに加えることができるアプリケーション
があったらいいな、という思いから作成した。また、映画が好きな仲間とそれぞれの感想や考察を
気軽に意見交換できる場があればいいなと思い、チャット機能も加えることとなった。

# 洗い出した要件
https://docs.google.com/spreadsheets/d/1E6VGD5xKBb6xrcTDFqVmfec0rH6-Hw5S-eaCmjYhS-g/edit?usp=sharing

# 実装した機能についての画像やGIF、およびその説明
## 投稿
https://i.gyazo.com/2b397332a12a21153f61f6968c8f8620.gif（投稿)  
必須高項目を入力すると映画情報を投稿できる。投稿はトップページと「collectionページ」へ表示される。
## コレクション
https://i.gyazo.com/8271846d942d4e309a1a66bae891a1f2.gif(コレクション)
映画情報へ記載されているユーザーネームをクリックするとそのユーザーの「collectionページ」へ遷移できる。
映画情報をクリックすると、詳細ページへ遷移できる（カレントユーザーには『編集・削除』ボタンが表示される)。  
##  お気に入り機能（観たい）
https://i.gyazo.com/c03a0b377f6046b2e99e8fed73f7d5c8.gif（watchリスト追加）  
他のユーザーが投稿した映画情報には『watchリストへ追加（または、’watchリストから削除’）』ボタンが表示され、追加をクリックすると自身の  
「watchリスト」へ表示される。  
『watchリストへ追加（または、’watchリストから削除’）』ボタンは"javascript"で実装し、非同期通信処理がされている。
## チャット　
https://i.gyazo.com/53bb94bc8d718b56de41a910f44bf65b.gif（チャット）  
映画（チャットルーム）をクリックすると入室でき、その映画についてのコメントを送信できる（まだコメントがない場合は  
’コメントはまだありません’と表示されている）。
コメントを投稿したユーザーのみ削除ボタンが表示され、削除できる。
チャット機能はjQueryで実装し、非同期通信処理がされている。
## 管理者権限　
https://i.gyazo.com/821e5a23cddc5151b80ffc9bbde8671e.jpg(管理者のみroomが作成できる)  
「movie chat　ページ」の映画（チャットルーム）は管理者のみ、追加・編集・削除ができる。
（映画（チャットルーム）の重複を避けるため）
管理者権限は gem（ rails_admin'~> 2.0.0.beta、 cancancan）をインストールし、seedsファイルに記述したのち  
’rails db seeds’で付与した。  
https://i.gyazo.com/c1ff4c3cbd2740b1c29ab20e589104b1.gif（管理者ではない）  
ユーザーが管理者ではない場合、プルダウンリストに『make room』ボタン、映画（チャットルーム）の『編集・削除』ボタンは
表示されない。
##　アカウント　
https://i.gyazo.com/19ccde63e50ad4a72fafb95ccb73e5e3.gif(アカウント)
プルダウンの『アカウント』をクリックするとアカウント情報が表示される。登録内容を変更すると編集でき、『退会する』クリックすると  
そのユーザーのアカウントが削除される。いずれも実行される前にアラートが表示される。  
アカウント削除機能は、userカラムに'deleted'を追加実装した。  
https://i.gyazo.com/caf0b56f2a6d2759f40ff8f6bb6911d8.gif（権限）  
ログインしていないユーザーは、トップページの映画情報の詳細ページは閲覧できるが、他のユーザーの「collection ページ」  
へは遷移できない（ログイン画面へ遷移される）。  
## ショートカット
https://i.gyazo.com/369c51cc41d1089a968e0139e3b53c6f.gif（ショートカット)  
ログインしているユーザーの個人のページは、トップページにショートカットリンクが表示される。  


# 実装予定の機能
次はレスポンシブデザインに対応していく。  
今後はSNSアカウントでログインできるように実装していく予定。  

# データベース設計
https://i.gyazo.com/8297837652320f134eb59e7d740bea32.png  

#  開発環境    
Ruby/Ruby on Rails/MySQL/Github/AWS/Visual Studio Code/jQuery/JavaScript






# テーブル設計
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
