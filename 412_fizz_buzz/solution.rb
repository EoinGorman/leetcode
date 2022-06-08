# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
    output = []
    (1..n).each do |x|
        output << fizz_buzz_encode(x)
    end
    output
end

def fizz_buzz_encode(n)
    return 'FizzBuzz' if n.modulo(3) == 0 && n.modulo(5) == 0
    return 'Fizz' if n.modulo(3) == 0
    return 'Buzz' if n.modulo(5) == 0

    return n.to_s
end

if __FILE__ == $0
    puts fizz_buzz(5)
end