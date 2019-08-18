module ChoreManager
  include LazyConfig::Loader

  class << self
    def database_configurations
      {environment.to_s => config['database']}
    end
  end
end
