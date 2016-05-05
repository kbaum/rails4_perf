#!/usr/bin/env ruby
DIR = File.dirname(__FILE__)
require DIR + '/../config/environment'

User.delete_all

bm1 = Benchmark.measure("build users") do
  @users = 1000.times.map{ User.new(email: 'test@test.com', password: 'secret123') }
end
bm2 = Benchmark.measure("save users") do
  @users.each(&:save!)
end
puts bm1
puts bm2

