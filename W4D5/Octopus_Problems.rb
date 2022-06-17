=begin  
Sluggish Octopus
Find the longest fish in O(n^2) time. Do this by comparing all fish lengths to all other fish lengths
=end


#"fiiiissshhhhhh"

def longest_fish(arr)
    long = arr[0]
    (0...arr.length - 1).each do |idx1|
        (idx1 + 1...arr.length - 1).each_with_index do |idx2|
            long = arr[idx1] if arr[idx1].length > long[0].length
        end
    end
    
    long
end

