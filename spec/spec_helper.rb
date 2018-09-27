require 'serverspec'
require 'docker'

Docker.options = { read_timeout: 800, write_timeout: 800 }

set :backend, :docker