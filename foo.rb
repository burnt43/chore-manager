require 'initialize'

ChoreManager::Chore.auto_upgrade!
ChoreManager::Chore.create(foobar: 'test_0001')
puts ChoreManager::Chore.pluck(:foobar).to_s
puts 'hello, world!'
