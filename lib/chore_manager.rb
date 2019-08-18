module ChoreManager
  include LazyConfig::Loader

  class << self
    def database_configurations
      {environment => config['database']}
    end
  end
end
