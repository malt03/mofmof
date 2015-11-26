require 'mofmof'
require 'eventmachine'

namespace :mofmof do
  desc 'say mofmof'
  task say: :environment do
    puts Mofmof.configuration.mof * 2 + '。'
  end

  desc 'say mofmofmofmofmof'
  task saaaaaaay: :environment do
    puts Mofmof.configuration.mof * 10 + '。'
  end

  desc 'echo server'
  task echo: :environment do
    EM.run do
      EM.start_server("0.0.0.0", 10000, Echo)
    end
  end
end

class Echo < EM::Connection
  def receive_data(data)
    send_data(data)
  end
end
