
module MergeSort extend self
  def exec array
    divide array.dup #internal process is bang method
  end
  private
  def divide left
    return left if left.length<=1
    right=left.pop(left.length/2)
    merge(divide(left),divide(right))
  end

  def merge(left,right)
    result=[]
    loop do
      if left.first<=right.first
        result<<left.shift
        break if left.empty?
      else
        result<<right.shift
        break if right.empty?
      end
    end
    result+left+right
  end
end