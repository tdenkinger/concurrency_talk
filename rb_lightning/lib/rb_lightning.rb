module RbLightning
  def self.do_run(collection, fun)
    squares = []
    collection.each do |i|
      squares << fun.call(i)
    end
    squares
  end
end
