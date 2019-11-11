class Library

@@book =[]

attr_accessor :title, :student_name, :date, :book, :rental, :books

  def initialize(input_title, input_student_name, input_date)
    @title = input_title
    @rental = {}
    @student_name = input_student_name
    @date = input_date
    @rental["student_name"] = @student_name
    @rental["date"] = @date

  @book = {}
  @book["title"] = @title
  @book["rental"] = @rental

  @@books.push[@book]


  end

end
