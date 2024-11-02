# frozen_string_literal: true

require 'redis'

$redis = Redis.new(port: 6380)
