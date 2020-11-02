require 'pry'
class School
    attr_accessor :name, :roster, :grade

    def initialize(name)
        @name = name 
        @roster = {}
    end 

    # a ||= b means, if a is undefined then assign it the value of b, otherwise leave it alone.
    def add_student(name, grade)
        roster[grade] ||= []
            roster[grade] << name
         
    end 

    #itterate over hash, check if student grade is equal to grade then return student names 
    def grade(grade)
        roster.detect do |student_grade, student|
            if student_grade == grade
                return student
            end 
        end 
    end  


    def sort 
        new_hash = {}
        roster.each do |grade, student|
            new_hash[grade] = student.sort 
        end 
        new_hash
    end 

end 

