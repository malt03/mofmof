require 'eventmachine'

namespace :mofmof do
  desc 'say mofmof'
  task :say do
    puts "もふもふ。"
  end

  desc 'say mofmofmofmofmof'
  task :saaaaaaay do
    puts "もふもふもふもふもふもふもふもふもふもふもふもふもふもふもふもふもふもふ。"
  end

  desc 'echo server'
  task :echo do
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
