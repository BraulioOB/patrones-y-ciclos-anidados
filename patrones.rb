def letra_o(n)
    puts "*" * n
    (n - 2).times {
        puts "*" + " " * (n - 2) + "*"
    }
    puts "*" * n
end

def letra_i(n)
    if n % 2 == 0
        n -= 1
    end

    puts "*" * n
    (n - 1).times {
        puts " " * (n / 2) + "*"
    }
    puts "*" * n
end

def letra_z(n)
    puts "*" * n
    diagonal = n
    for i in 0...(n - 2)
        puts " " * (diagonal - 2) + "*"
        diagonal -= 1
    end
    puts "*" * n
end

def letra_x(n)
    if n % 2 == 0
        n -= 1
    end

    display = ""
    for y in 0...n
        display = " " * (n - y - 1) + "*" + " " * (y)
        display[y] = "*"

        puts display

    end
end

def numero_cero(n)
    puts "*" * n
    display = ""
    for y in 0...(n - 2)
        display = "*" + " " * (n - 2) + "*"
        display[y + 1] = "*"

        puts display
    end
    puts "*" * n
end

def navidad(n)
    if n < 7
        n = 7
    end

    for leaf in 0...(n * 4 / 7)
        puts " " * (n / 2 - leaf) + "* " * leaf + "*"
    end
    
    for log in 0...(n * 2 / 7)
        puts " " * (n / 2) + "*"
    end

    puts " " * ((n - (n - 2)) / 2) + "* " * (n / 2)
end


num = 5

letra_o(num)
letra_i(num)
letra_z(num)
letra_x(num)
numero_cero(num)
navidad(num)
