
# input
# string
# output
# boolean
# true if 
  # spells out letter, but doesn't use twice
  # if used, once, then can't use again.
  # make another hash of used blocks
  # for each letter, compare keys and values if letter is in hash of used blocks.

BLOCKS = {'B'=>'O',
          'X'=>'K',
          'D'=>'Q',
          'C'=>'P',
          'N'=>'A',
          'G'=>'T',
          'R'=>'E',
          'F'=>'S',
          'J'=>'W',
          'H'=>'U',
          'V'=>'I',
          'L'=>'Y',
          'Z'=>'M' }

def block_word?(string)
  used_block = {}
  string.upcase.split("").each do |letter|
    if BLOCKS.has_key?(letter) && !used_block.has_key?(letter)
      used_block[letter] = BLOCKS[letter]
    elsif BLOCKS.values.include?(letter) && !used_block.values.include?(letter)
      used_block[BLOCKS.key(letter)] = letter
    else
      return false
    end
  end

  true
end

# block_word?("ABC") #=> true
# block_word?("ABCC") #=> false
puts block_word?('BATCH') == true
puts block_word?('BUTCH') == false
puts block_word?('jest') == true