#!/usr/bin/env ruby

###
#  Sort integer arguments (ascending)
###

result = []

ARGV.each do |arg|
  # skip if not integer
  next unless arg =~ /^-?[0-9]+$/

  # convert to integer
  i_arg = arg.to_i

  # find the correct position and insert the integer
  inserted = false
  result.each_with_index do |num, index|
    if i_arg < num
      result.insert(index, i_arg)
      inserted = true
      break
    end
  end

  # if not inserted, it goes at the end
  result << i_arg unless inserted
end

puts result
