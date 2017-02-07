class Game
  def initialize
    @secret = Array.new(4) {rand(1...9)}
    @helper = Array.new(4)
  end
  def check(input)
    for i in 0..input.length-1 do
      input[i] == @secret[i] ? @helper[i] = 1 : @helper[i] = 0
      
    end
  end
  def complete?
    @helper.all? {|i| i==1}
  end
  def gethelp
    return @helper
  end
end
