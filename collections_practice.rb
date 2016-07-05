# your code goes here
require 'pry'

def begins_with_r(tools)
  tools.all? do |tool|
    tool[0] == "r"
    end
end


def contain_a(tools)
  tools.select do |tool|
    tool.include?("a")
  end
end


def first_wa(tools)
  tools.find do |tool|
    tool[0..1] == "wa"
  end
end


def remove_non_strings(tools)
  tools.select do |tool|
    tool.class == String 
  end
end


def count_elements(tools)
  #binding.pry
  freq_hash = Hash.new(0)

  tools.each do |person|
    #binding.pry
    freq_hash[person[:name]] += 1
  end
  #binding.pry

  freq_array = []

  freq_hash.each do |name, count|
    freq_array << {name: name, count: count}
  end
  
  freq_array
end


def merge_data(data1, data2)
  merged_array = []

  data2.each do |person|
    person.each do |name, attributes|
      info_hash = attributes
      info_hash[:first_name] = name
      merged_array << info_hash
      
    end
  end

  merged_array
end


def find_cool(data)
  #binding.pry
  data.select do |hash|
    hash[:temperature] == "cool"
  end
end


def organize_schools(schools)
  organized_hash = Hash.new([])

  schools.each do |school,location|
    if organized_hash.keys.include?(location[:location])
      organized_hash[location[:location]] << school
    else
      organized_hash[location[:location]] = [school]
    end
  end

  organized_hash
end