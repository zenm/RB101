# input
  # string
# output
  # a hash that shows {lowercase: 12, uppercase: 12, neither: 12 }

  # take string
  # iterate through string
  # test if lowercase, then increment the hash with lowercase
  # if uppercase, then increment the hash with uppercase
  # if neither, then increment the hash with neither
  # return hash of percentage of each divided by the size of the string

def letter_percentages(string)
  denominator = string.size
  hash_freq = { lowercase: 0, uppercase: 0, neither: 0}
  hash_percentages = { lowercase: 0, uppercase: 0, neither: 0 }

  string.chars.each do |elem|
    if /[a-z]/.match?(elem)
      hash_freq[:lowercase] += 1
    elsif /[A-Z]/.match?(elem)
      hash_freq[:uppercase] += 1
    else
      hash_freq[:neither] += 1
    end
  end
  calculate_percentages(hash_percentages, hash_freq)
end

def calculate_percentages (hash_percentages, frequencies)
  total = frequencies.values.sum
  hash_percentages[:lowercase] = frequencies[:lowercase] / total.to_f * 100
  hash_percentages[:uppercase] = frequencies[:uppercase] / total.to_f * 100
  hash_percentages[:neither] = frequencies[:neither] / total.to_f * 100
  hash_percentages
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

# notes to self
# what I was missing:
# I needed to pass in two hashes, one for the frequeny and one for the percentages.