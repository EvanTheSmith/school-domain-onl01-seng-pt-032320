require 'pry'

class School
  attr_accessor :name, :roster
  done_sorted = {}
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    if not @roster.include?(grade)
      @roster[grade] = []
    end
    @roster[grade] << name
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
     @roster.each do |grade, name|
      sorted[grade] = name.sorted
     end
    done_sorted
  end

end