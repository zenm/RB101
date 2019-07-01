# https://launchschool.com/exercises/f175ddac

def short_long_short(string1, string2)
  return (string1 + string2 + string1) if string1.length < string2.length
  return (string2 + string1 + string2) if string2.length < string1.length
  "Strings are the same length"
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
