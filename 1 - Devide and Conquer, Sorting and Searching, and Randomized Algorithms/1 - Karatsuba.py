def Karatsuba(x, y):
    
    strx , stry = str(x), str(y)
    digits = max(len(strx), len(stry))
    half = digits // 2
    
    a = int(strx[:-half])
    b = int(strx[-half:])
    c = int(stry[:-half])
    d = int(stry[-half:])
    
    result = (a*c*(10**(digits))) + (((a*d) + (b*c))*(10**half)) + (b*d)
    return result
if __name__ == "__main__":
    x = int(input("Enter the value of x: "))
    y = int(input("Enter the value of y: "))
    
    result = Karatsuba(x, y)
    print(f"The result of {x} * {y} using Karatsuba is: {result}")