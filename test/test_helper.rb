ENV['RAILS_ENV'] ||= 'test'
<<<<<<< HEAD
<<<<<<< HEAD
    require File.expand_path('../../config/environment', __FILE__)
    require 'rails/test_help'
    require "minitest/reporters"
    Minitest::Reporters.use!
    
=======
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require "minitest/reporters"
Minitest::Reporters.use!

>>>>>>> filling-in-layout
=======

require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require "minitest/reporters"

Minitest::Reporters.use!
>>>>>>> b5afeaf916255ae049f5877d310618cbf4757276
class ActiveSupport::TestCase
# Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order. fixtures :all
      # Add more helper methods to be used by all tests here...
end