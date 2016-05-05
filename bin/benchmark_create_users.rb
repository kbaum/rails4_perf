#!/usr/bin/env ruby
DIR = File.dirname(__FILE__)
require DIR + '/../config/environment'

User.delete_all
bm = Benchmark.measure do
  1000.times{ User.create!(email: 'test@test.com', password: 'secret123') }
end
puts bm

