

# Write a method that takes a string, and then returns a hash that contains
# 3 entries: one represents the number of characters in the string that are
# lowercase letters, one the number of characters that are uppercase letters,
# and one the number of characters that are neither.

LOWERCASE_A = 97
LOWERCASE_Z = 122
UPPERCASE_A = 65
UPPERCASE_Z = 90

def letter_case_count(string)
  lettercase_hash = { lowercase: 0, uppercase: 0, neither: 0 }
  string.each_char do |char|
    case char.ord
    when LOWERCASE_A..LOWERCASE_Z then lettercase_hash[:lowercase] += 1
    when UPPERCASE_A..UPPERCASE_Z then lettercase_hash[:uppercase] += 1
    else
      lettercase_hash[:neither] += 1
    end
  end
  lettercase_hash
end

puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
