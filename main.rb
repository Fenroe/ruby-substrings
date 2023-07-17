# create a function called substrings
# this function takes a string and an array of valid substrings
# it will return a hash of the substrings found inside the
# original string and how many times it was found
# results should be case insensitive, ie, Howard can contain
# the how substring
# the string should be able to contain multiple words

# create a dictionary
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# ask user for string input
puts("Type a word or sentence you want to compare against the dictionary.")
# save input as variable for future use
user_string = gets.chomp()
# define method substrings that takes string and array of strings
def substrings(string, substrings)
    # create empty hash for method results
    results = Hash.new
    # copy the string into a version that is all lowercase
    lowercase_string = string.downcase
    # loop through dictionary
    for substring in substrings
        # copy the substring into a version that is all lowercase
        lowercase_substring = substring.downcase
        # #scan string for each substring
        scan_results = lowercase_string.scan(lowercase_substring)
        # if the result array is greater than 0, append to the hash
        if scan_results.length > 0
            # key = substring name
            # value = length of results array
            results[substring] = scan_results.length
        end
    end
    # once we're done, return the hash
    return results
end

string_scan_results = substrings(user_string, dictionary)

puts("Here are the results of the scan:")
puts(string_scan_results)