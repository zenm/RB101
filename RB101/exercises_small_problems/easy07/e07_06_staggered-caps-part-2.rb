

# Staggered Caps (Part 2)

# Modify the method from the previous exercise 
# so it ignores non-alphabetic characters when 
# determining whether it should uppercase or lowercase each letter. 
# The non-alphabetic characters should still be included 
# in the return value; they just don't count when toggling the desired case.

def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if /[A-Za-z]/ =~ char
      if need_upper
        result += char.upcase
      else
        result += char.downcase
      end
      need_upper = !need_upper
    else
      result += char
    end
  end
  result
end

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
    