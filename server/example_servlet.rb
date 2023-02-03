# frozen_string_literal: true

module TestCaseFilter
  def count(array)
    array.size
  end
end

class Servlet < LiquidServlet
  def index
    { 'date' => Time.now }
  end

  def testcases
    { 'testcases' => test_case_list }
  end

  def test_case_list
    [{
      'dot_variable_name.created_time' => '123'
    }, {
      'dot_variable_name.created_time' => '0xF'
    }, {
      'dot_variable_name.created_time' => '9999999999'
    }, {
      'dot_variable_name.created_time' => 'asdf23'
    }, {
      'dot_variable_name.created_time' => '2023-01-31 11:55:12'
    }, {
      'dot_variable_name.created_time' => '9999-01-31 11:55:12Z00'
    }, {
      'dot_variable_name.created_time' => '9999-01-31 11:55:12'
    }, {
      'dot_variable_name.created_time' => '1675170946.546'
    }, {
      'dot_variable_name.created_time' => '1675170946'
    }, {
      'dot_variable_name.created_time' => 1_675_170_946.546
    }, {
      'dot_variable_name.created_time' => 1_675_170_946
    }]
  end
end
