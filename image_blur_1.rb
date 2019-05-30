class Subarray
  attr_accessor :number1, :number2, :number3, :number4

  def initialize(sub_array)  
   self.number1 = sub_array[0]
   self.number2 = sub_array[1]
   self.number3 = sub_array[2]
   self.number4 = sub_array[3]
  end

  def output_subarray
    puts "#{number1}#{number2}#{number3}#{number4}"
  end
end

class Image
  def initialize(array_of_arrays)
    @subarrays = []
    @subarrays << Subarray.new(array_of_arrays[0])
    @subarrays << Subarray.new(array_of_arrays[1])
    @subarrays << Subarray.new(array_of_arrays[2])
    @subarrays << Subarray.new(array_of_arrays[3])
  end

  def output_image
    @subarrays.each do |list|
      list.output_subarray
    end
  end
end


image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
image.output_image