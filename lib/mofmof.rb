require "mofmof/version"

module Mofmof
  class Railtie < ::Rails::Railtie
    rake_tasks do
      load "tasks/mofmof.rake"
    end
  end
end
