#phase 1: O(n!)
def first_anagram?(string1, string2) #
  perm = string1.split("").permutation.to_a
  perm.map!(&:join)
  perm.include?(string2)
end

# p first_anagram?("holle", "hello")

#phase 2: O(n^2)
def second_anagram?(str1, str2)
  return false unless str1.length == str2.length
  str1.each_char do |char|
    if str2.include?(char)
      i = str2.index(char)
      str2[i] = ""
    end
  end
  str2.empty?
end

# p second_anagram?("holle", "hello")
# p second_anagram?("holle", "hellsdfo")
# p second_anagram?("hosdflle", "hello")

#phase 3: O(nlogn)

def third_anagram?(str1, str2)
  sort1 = str1.split("").sort
  sort2 = str2.split("").sort
  sort1 == sort2
end

# p third_anagram?("holle", "hello")
# p third_anagram?("hosdflle", "hello")
# p third_anagram?("holle", "hellsdfo")

# phase 4: O(n)
def fourth_anagram?(str1, str2)
  return false if str1.length != str2.length

  hash1 = Hash.new(0)
  hash2 = Hash.new(0)

  (0...str1.length).each do |i|
    hash1[str1[i]] += 1
    hash2[str2[i]] += 1
  end

  hash1 == hash2
end

p fourth_anagram?("holle", "hello")
p fourth_anagram?("hosdflle", "hello")
p fourth_anagram?("holle", "hellsdfo")