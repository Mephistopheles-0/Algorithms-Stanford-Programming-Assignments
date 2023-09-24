function Karatsuba(x, y)
    strx = string(x)
    stry = string(y)
    digits = max(length(strx), length(stry))
    half = digits ÷ 2
    
    a = parse(Int, strx[1:end-half])
    b = parse(Int, strx[end-half+1:end])
    c = parse(Int, stry[1:end-half])
    d = parse(Int, stry[end-half+1:end])
    
    result = (a * c * 10^digits) + ((a * d + b * c) * 10^half) + (b * d)
    return result
end

# Prompt the user for input
print("Enter the value of x: ")
x = parse(Int, readline())
print("Enter the value of y: ")
y = parse(Int, readline())

# Calculate the result
result = Karatsuba(x, y)

# Print the result
println("The result of $x * $y using Karatsuba is: $result")
