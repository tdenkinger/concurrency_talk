module RbLightning
  def self.do_run(collection)
    collection.each do |i|
      factorial(i, 1)
    end
    :ok
  end

  private

  def self.factorial(n, acc)
    return if n == 1
    factorial(n-1, acc*n)
  end
end
