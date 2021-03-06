require 'pry'

class School
  attr_accessor :name, :roster
  
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
    done_sorted = {}
     @roster.each do |grade, name|
      done_sorted[grade] = name.sort
     end
    done_sorted
  end

end