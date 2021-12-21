class PublicYear < ActiveHash::Base
 self.data = [
   { id: 1, name: '--' },
   { id: 2, name: '1880年代' },
   { id: 3, name: '1890年代' },
   { id: 4, name: '1900年代' },
   { id: 5, name: '1910年代' },
   { id: 6, name: '1920年代' },
   { id: 7, name: '1930年代' },
   { id: 8, name: '1940年代' },
   { id: 9, name: '1950年代' },
   { id: 10, name: '1960年代' },
   { id: 11, name: '1970年代' },
   { id: 12, name: '1980年代' },
   { id: 13, name: '1990年代' },
   { id: 14, name: '2000年代' },
   { id: 15, name: '2010年代' },
   { id: 16, name: '2020年代' },
  ]
  include ActiveHash::Associations
  has_many :movies

end