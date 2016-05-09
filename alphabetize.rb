def alphabetize(arr, rev=false)
    arr.sort!
    if rev==true
        return arr.reverse!
    end
    arr
end

numbers = [1, 4, 2, 7, 3]
puts alphabetize(numbers)
