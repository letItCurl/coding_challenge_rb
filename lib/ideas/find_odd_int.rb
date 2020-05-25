#Given an array, find the integer that appears an odd number of times.
#
#There will always be only one integer that appears an odd number of times.

def find_it(seq)
  seq.detect { |n| seq.count(n).odd? } # or find
end

def find_it_red(seq)
  seq.reduce(:^) # alias for inject
end