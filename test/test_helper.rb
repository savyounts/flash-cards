# you can "centralize" all your requirements into this test_helper file.
# just require this file in any test, and it has access to all these
# gems and "lib" files

# here's the gems you want access to
gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

# and here's all the lib files you need access to
require './lib/card'
require './lib/guess'
require './lib/deck'
require './lib/round'