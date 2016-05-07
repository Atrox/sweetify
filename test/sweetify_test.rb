require 'test_helper'

class Sweetify::Test < MiniTest::Test
  test 'truth' do
    assert_kind_of Module, Sweetify
  end

  test 'basic test' do
    sweetalert('Test Title')
    assert_not_empty flash
  end
end
