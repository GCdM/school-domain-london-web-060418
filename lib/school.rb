# code here!
class School
  attr_accessor :roster
  
  def initialize(roster)
    @roster = {}
  end
  
  def add_student(student, grade)
    if !@roster.include?(grade)
      @roster[grade] = []
    end
    @roster[grade] << student
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster = Hash[@roster.sort_by {|grade, students| grade}]
    @roster.each do |grade, students|
      students.sort!
    end
  end
end