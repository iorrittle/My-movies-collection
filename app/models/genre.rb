class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'アクション' },
    { id: 3, name: 'アドベンチャー' },
    { id: 4, name: 'アニメーション' },
    { id: 5, name: 'コメディ' },
    { id: 6, name: 'クライム（犯罪）' },
    { id: 7, name: 'ドラマ' },
    { id: 8, name: 'ファミリー' },
    { id: 9, name: 'ミステリー' },
    { id: 10, name: 'サスペンス' },
    { id: 11, name: 'ホラー' },
    { id: 12, name: 'SF' },
    { id: 13, name: 'ファンタジー' },
    { id: 14, name: '恋愛・ロマンス' },
    { id: 15, name: '音楽' },
    { id: 16, name: 'ミュージカル' },
    { id: 17, name: 'スポーツ' },
    { id: 18, name: '戦争' },
    { id: 19, name: '歴史・伝記' },
    { id: 20, name: '西部劇' },
    { id: 21, name: '短編' },
    { id: 22, name: 'ドキュメンタリー' },
    { id: 23, name: 'タイムループ' },
    { id: 24, name: 'オムニバス・アンソロジー' },
    { id: 25, name: 'アート' },
    { id: 26, name: '青春' },
    { id: 27, name: 'パニック' },
    { id: 28, name: 'カルト' },
    { id: 29, name: 'グルメ' },
    { id: 30, name: '怪獣' },
  ]
  
  include ActiveHash::Associations
  has_many :users
  has_many :movies


end