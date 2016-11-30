# code here!
require "pry"

class School

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def school_name
    @school_name
  end

  def roster
    @roster
  end

  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade] << student_name
  end

  def grade(grade_level)
    @roster.each do |grade, students|
      if grade == grade_level
        return @roster[grade]
      end
    end
  end

  def sort
    @roster.each do |key, value|
      value.sort!
    end
  end

end
