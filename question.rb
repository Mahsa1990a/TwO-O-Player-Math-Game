class Questions
  attr_accessor :answer, :prompt, :math
  def initialize
    @sym_arr  = ['+', '-', '/', '*']
    @math     = @sym_arr.sample
    @val_1    = rand(50...100)
    @val_2    = rand(1...50)
    @answer   = @val_1.send(@math, @val_2)
    @prompt   = "What is #{@val_1} #{@math} #{@val_2}?"
  end
end