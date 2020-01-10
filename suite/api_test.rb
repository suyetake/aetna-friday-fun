require File.expand_path('../support/test_helper', __dir__)

require 'minitest/autorun'

class ApiTest < Minitest::Test
  include RequestHelper

  def test_no_api_key
    request('GET', '?s=star', {}, 'http://www.omdbapi.com/')
    puts last_response.obj

    # TODO: Task 2 - add the assertion
  end
end
