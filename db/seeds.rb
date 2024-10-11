# db/seeds.rb

# Удаление всех существующих маршрутов
Trail.destroy_all

# Создание маршрутов
Trail.create([
  { title: 'Маршрут 1', description: 'Описание маршрута 1' },
  { title: 'Маршрут 2', description: 'Описание маршрута 2' },
  { title: 'Маршрут 3', description: 'Описание маршрута 3' }
])

puts "Создано #{Trail.count} маршрутов."