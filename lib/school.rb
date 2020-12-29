require 'pry'

class School

    attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        roster[grade] ||= [] # <= States that if a grade does not exist in the roster, to create one (roster[grade] = roster[grade]). Otherwise(OR), create an empty array for the existing key (roster[grade] = []). 
        roster[grade] << name
    end

    def grade(grade) 
        roster[grade] # <= returns an array of all students with the associated key
    end

    def sort 
        new_hash = {}
        roster.each do |grade, students| 
            new_hash[grade] = students.sort
        end
        new_hash
    end
end
    
            