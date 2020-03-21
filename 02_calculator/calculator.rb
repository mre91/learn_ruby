#write your code here
def add(num1, num2)
    num1 + num2
end

def subtract(num1, num2)
    num1 - num2
end

def sum(arr)
    sum = 0
    arr.each do |n|
        sum += n
    end
    return sum
end

def multiply(arr)
    product = arr[0]
    arr.shift
    arr.each do |n|
        product *= n
    end
    return product
end

def power(num, expo)
    if expo == 0
        return 1
    elsif expo == 1
        return num
    else
        expo -= 1
        power = num
        expo.times {power *= num}
        return power
    end
end

def factorial(num)
    if num == 0 || num == 1
        return 1
    else
        fact = num
        num -= 1
        while num > 0
            fact *= num
            num -= 1
        end
        return fact
    end
end