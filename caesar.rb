def crypt(a, b)
  0.upto(a.length-1) do |i|
    if(a[i]!=" ")
      if(a[i].ord>=65 && a[i].ord<=90)
        a[i]=(65+(a[i].ord+b.to_i-65)%26).chr
      elsif(a[i].ord>=97 && a[i].ord<=122)
        a[i]=(97+(a[i].ord+b.to_i-97)%26).chr
      end
    end
  end
  return a
end


puts "hello there, please input a text to encrypt:"
a=gets

puts "now input an integer to encrypt your text:"
b=gets

puts crypt(a,b)
