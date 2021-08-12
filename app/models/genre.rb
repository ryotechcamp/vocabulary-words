class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'HTML&css' },
    { id: 3, name: 'ruby' },
    { id: 4, name: 'javascript' },
    { id: 5, name: 'rspec' },
    { id: 6, name: 'Python' },
    { id: 7, name: 'PHP' },
    { id: 8, name: 'SQL' },
    { id: 9, name: 'C言語' },
    { id: 10, name: 'その他' }
  ]
  end