# Monkey-Patch Ruby's existing Array class to add your own custom methods
require "byebug"
class Array
  
    def span
        return nil if self.length == 0
        self.max - self.min
    end

    def average
        return nil if self.length == 0
        sum = 0.0
        self.each {|num| sum += num} 
        sum / self.length
    end

    def median
        return nil if self.length == 0
        arr = self.sort
        mid = self.length/2

        if !self.length.even?
            arr[mid]
        else 
            sum = arr[mid] + arr[mid - 1]
            sum / 2.0
        end
    end

    def counts
        hash = Hash.new(0)

        self.each do |ele|
            hash[ele] += 1
        end
        hash
    end


    def my_count(value)
        counter = 0

        self.each do |ele|
            counter += 1 if ele == value
        end
        counter
    end

    def my_index(value)

        self.each_with_index do |ele,i|
            return i if ele == value
        end
        nil
    end

    def my_uniq
        arr = []

        self.each do |ele|
            arr << ele if !arr.include?(ele)
        end
        arr
    end



    def my_transpose
        newArr = []

        (0...self.length).each do |row|
            newRow = []

            (0...self.length).each do |col|
                newRow << self[col][row]
            end

            newArr << newRow
        end
        newArr
    end

end

