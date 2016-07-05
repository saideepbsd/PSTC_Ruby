#!/usr/bin/env ruby
require_relative '../lib/vehicle.rb'
require_relative '../lib/bike.rb'

auto = Vehicle.new('Bajaj', 2_0000)
auto.show_contents

shine = Bike.new('Shine', 7_0000, 'Thug')
shine.show_contents
shine.change_price(71_000)
shine.show_contents

