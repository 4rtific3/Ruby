class Student
  # Provides both setter & getter methods
  attr_accessor :first_name, :last_name, :email, :course, :id
#   # Only provides getter method
#   attr_reader :id

  @first_name
  @last_name
  @email
  @course
  @id

  def initialize(fname, lname, email, course, id)
    @first_name = fname
    @last_name = lname
    @email = email
    @course = course
    @id = id
  end

## Not needed with attr_accessor
#   # Setter method
#   def first_name=(name)
#     @first_name = name
#   end

#   # Getter method
#   def first_name
#     @first_name
#   end

  def to_s
    "First Name: #{@first_name}, Last Name: #{@last_name}"
  end

end

user1 = Student.new("John", "Johnson", "jjohnson@gmail.com", "Medical Science", "12345678")
puts user1

# user1.first_name = "John"
# user1.last_name = "Johnson"
# puts user1