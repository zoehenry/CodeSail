class Employee
  attr_accessor :first_name, :last_name, :experience, :salary, :employer

  def initialize(first_name,last_name, experience, salary, employer)
    @first_name = first_name
    @last_name = last_name
    @experience = experience
    @salary = salary
    @employer = employer
  end

  def fullname
    "#{@first_name} #{@last_name}"
  end
end

class Teacher < Employee
  attr_accessor :grade, :students, :subjects

  def initialize(grade, students, subjects, first_name,last_name, experience, salary, employer)
    @grade = grade
    @students = students
    @subjects = subjects
    super(first_name,last_name, experience, salary, employer)
  end

  def description
    if @subjects.class != Array
      puts fullname.to_s + " teaches " + @subjects.to_s + " at " + @employer.to_s + "."
    else
      puts fullname.to_s + " teaches " + @subjects.shuffle.first.to_s  + " at " + @employer.to_s + "."
    end
  end
end
