# ROT13 is a simple letter substitution cipher that replaces a letter with the letter 13 letters after it in the alphabet. ROT13 is an example of the Caesar cipher.
# 
# Create a function that takes a string and returns the string ciphered with Rot13. If there are numbers or special characters included in the string, they should be returned as they are. Only letters from the latin/english alphabet should be shifted, like in the original Rot13 "implementation".

def rot13(string)
  output = []
  min = ('a'..'z').to_a * 2
  maj = ('A'..'Z').to_a * 2
  string.split('' ).each do |l|
    if l =~ /[A-Za-z]/
      if l == l.upcase
        pos = maj.index(l).to_i + 13
        output << maj[pos]
      else
        pos = min.index(l).to_i + 13
        output << min[pos]
      end
    else
      output << l
    end
  end
  output.join('')
end

def rot13_v2(string)
    string.tr("A-Za-z", "N-ZA-Mn-za-m")
end

def rot13_v3(string)
    origin = ('a'..'z').to_a.join + ('A'..'Z').to_a.join
    cipher = ('a'..'z').to_a.rotate(13).join + ('A'..'Z').to_a.rotate(13).join
    string.tr(origin, cipher)
end