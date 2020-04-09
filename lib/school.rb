class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    if @roster.include?(grade)==false
      @roster[grade]
    end
    @roster[grade] << name
  end

end