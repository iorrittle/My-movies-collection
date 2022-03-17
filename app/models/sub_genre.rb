class SubGenre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'アクション' },
    { id: 3, name: 'アドベンチャー' },
    { id: 4, name: 'トレジャーハント' },
    { id: 5, name: 'アニメーション' },
    { id: 6, name: 'コメディ' },
    { id: 7, name: 'ブラック・コメディ' },
    { id: 8, name: 'パロディ' },
    { id: 9, name: 'クライム（犯罪）' },
    { id: 10, name: 'ドラマ' },
    { id: 11, name: 'ロードムービー' },
    { id: 12, name: 'ファミリー' },
    { id: 13, name: 'ミステリー' },
    { id: 14, name: 'サスペンス' },
    { id: 15, name: 'サイコ' },
    { id: 16, name: 'ホラー' },
    { id: 17, name: 'スリラー' },
    { id: 18, name: 'シチュエーション' },
    { id: 19, name: 'SF' },
    { id: 20, name: 'スペースオペラ' },
    { id: 21, name: 'サイバーパンク' },
    { id: 22, name: 'スチームパンク' },
    { id: 23, name: 'ディストピア' },
    { id: 24, name: 'ファンタジー' },
    { id: 25, name: '恋愛・ロマンス' },
    { id: 26, name: '音楽' },
    { id: 27, name: 'ミュージカル' },
    { id: 28, name: 'スポーツ' },
    { id: 29, name: '戦争' },
    { id: 30, name: '歴史・伝記' },
    { id: 31, name: '西部劇' },
    { id: 32, name: '短編' },
    { id: 33, name: 'ドキュメンタリー' },
    { id: 34, name: '本が原作' },
    { id: 35, name: 'タイムループ' },
    { id: 36, name: 'タイムスリップ' },
    { id: 37, name: 'オムニバス・アンソロジー' },
    { id: 38, name: 'アート' },
    { id: 39, name: '青春' },
    { id: 40, name: 'パニック' },
    { id: 41, name: 'カルト' },
    { id: 42, name: 'グルメ' },
    { id: 43, name: '怪獣' },
  ]
  
  include ActiveHash::Associations
  has_many :users
  has_many :movies


end