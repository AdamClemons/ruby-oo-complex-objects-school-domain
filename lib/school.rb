# code here!
require 'pry'

class School

    attr_reader :name, :roster

    def initialize(name)
        @name = name
        @roster = {}        
    end

    def add_student(student, year)
        roster[year] ||= []
        roster[year] << student        
    end

    def grade(year)
        roster[year]      
    end

    def sort
        sorted = {}

        roster.each do |year, students|
            # binding.pry
            sorted[year] = students.sort 
        end
        sorted        
    end


end