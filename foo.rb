#!/usr/local/ruby/ruby-2.5.3/bin/ruby -I ./lib

require 'initialize'

ChoreManager::Chore.auto_upgrade!

cli = CliBuilder::Prompt.new(prompt_string: 'chore-manager%')

cli.register_command(:'list-chores') do |result|
  puts result
end

cli.run
