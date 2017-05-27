ROOT = File.expand_path '..', __FILE__

require 'faraday'

require "#{ROOT}/api/connection"

require "#{ROOT}/lifx-faraday/version"
require "#{ROOT}/lifx-faraday/api"
require "#{ROOT}/lifx-faraday/light"
