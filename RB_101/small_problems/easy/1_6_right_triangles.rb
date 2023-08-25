# Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

#first attempt

# def triangle(size)
#   ((size-1).downto(0)).each do |x|
#     puts " " * x + "*" * (size-x)
#   end
# end

#alternate

def triangle(num)
  stars = 1
  spaces = num - 1

  num.times do
    puts "#{" " * spaces}#{"*" * stars}"
    stars += 1
    spaces -= 1
  end
end

#flipped

def upside_down_triangle(num)
  stars = num
  spaces = 0

  num.times do
    puts "#{" " * spaces}#{"*" * stars}"
    stars -= 1
    spaces += 1
  end
end


triangle(3)
upside_down_triangle(3)