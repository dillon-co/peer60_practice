
RubyVM::InstructionSequence.compile_option = {
  tailcall_optimization: true,
  trace_instruction: false
}

  RubyVM::InstructionSequence.new(<<-STRING).eval
def fib(n, curr=1, prev=0)
  if n<=1
    curr
  else
    fib(n-1, (curr+prev), curr)
  end
end
  num = gets.chomp.to_i
  p fib(num)
STRING
def crap_fib(n)
  if n <= 1
    n
  else
    crap_fib(n-1) + crap_fib(n-2)
  end
end

puts "now try the crap fib"
numb = gets.chomp.to_i
puts crap_fib(numb)
