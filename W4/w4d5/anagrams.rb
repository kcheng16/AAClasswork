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

p third_anagram?("holle", "hello")
p third_anagram?("hosdflle", "hello")
p third_anagram?("holle", "hellsdfo")