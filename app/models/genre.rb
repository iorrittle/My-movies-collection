class Genre < ActiveHash::Base
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
    { id: 20, name: 'SF・スペースオペラ' },
    { id: 21, name: 'SF・サイバーパンク' },
    { id: 22, name: 'SF・スチームパンク' },
    { id: 23, name: 'SF・ディストピア' },
    { id: 24, name: 'ファンタジー' },
    { id: 25, name: '恋愛・ロマンス' },
    { id: 26, name: 'ラブ・コメディ' },
    { id: 27, name: '音楽' },
    { id: 28, name: 'ミュージカル' },
    { id: 29, name: 'スポーツ' },
    { id: 30, name: '戦争' },
    { id: 31, name: '歴史・伝記' },
    { id: 32, name: '西部劇' },
    { id: 33, name: '短編' },
    { id: 34, name: 'ドキュメンタリー' },
    { id: 35, name: '本が原作' },
    { id: 36, name: 'タイムループ' },
    { id: 37, name: 'タイムスリップ' },
    { id: 38, name: 'オムニバス・アンソロジー' },
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