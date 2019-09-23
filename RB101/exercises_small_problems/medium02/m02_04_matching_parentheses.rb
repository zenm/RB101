# input
  # string
# output
  # boolean

def balanced? (string)
  unmatched_pair = 0
  string.chars.each do |paren|
    if paren == "("
      unmatched_pair += 1
    elsif paren == ")" && unmatched_pair > 0
      unmatched_pair -= 1
    elsif paren == ")" && unmatched_pair <=0
      return false
    end
  end
  unmatched_pair == 0
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false