require "mofmof/version"
require "mofmof/configuration"

module Mofmof
  class << self
    attr_accessor :configuration
  end
  
  def self.configure
    self.configuration ||= Mofmof::Configuration.new
    yield(configuration)
  end
  
  class Railtie < ::Rails::Railtie
    rake_tasks do
      load "tasks/mofmof.rake"
    end
  end
end
