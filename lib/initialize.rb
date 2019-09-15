require 'rubygems'
require 'bundler/setup'

require 'ruby-lazy-config'
require 'ruby-lazy-const'
require 'cli-builder'
require 'active_record'
require 'mini_record'

require 'pathname'

module Kernel
  def environment
    :default
  end
end

LazyConst::Config.base_dir = Pathname.new(__FILE__).parent.parent.join('lib')

LazyConfig::Config.environment = environment
LazyConfig::Config.base_dir = Pathname.new(__FILE__).parent.parent.join('config')

ActiveRecord::Base.configurations = ChoreManager.database_configurations
ActiveRecord::Base.establish_connection(environment)
