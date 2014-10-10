module StringReverse extend self
  def do(text)
    do!(text.dup)
  end
  def do!(text)
    if (center=text.length/2).even? then center-=1 end    
    (0..center).each{ |i| text[i],text[-1-i]=text[-1-i],text[i]}
    text
  end
end