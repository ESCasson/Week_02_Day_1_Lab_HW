require('minitest/autorun')
require('minitest/rg')
require_relative('../library.rb')


class TestLibrary < MiniTest::Test

  def test_can_create_library_object
    new_book = Library.new("Summertime", "Jeff", "01/01/19")
  end

  def test_return_book
    new_book = Library.new("Summertime", "Jeff", "01/01/19")
    expected = {"title"=>"Summertime", "rental"=>{"student_name"=>"Jeff", "date"=>"01/01/19"}}
    assert_equal(expected, new_book.book)
  end

end
