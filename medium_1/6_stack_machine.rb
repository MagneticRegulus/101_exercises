# n - Place a value n in the "register". Do not modify the stack.
# PUSH - Push the register value on to the stack. Leave the value in the register.
# ADD - Pops a value from the stack and adds it to the register value, storing
  # the result in the register.
# SUB - Pops a value from the stack and subtracts it from the register value,
  # storing the result in the register.
# MULT - Pops a value from the stack and multiplies it by the register value,
  # storing the result in the register.
# DIV - Pops a value from the stack and divides it into the register value,
  # storing the integer result in the register.
# MOD - Pops a value from the stack and divides it into the register value,
  # storing the integer remainder of the division in the register.
# POP - Remove the topmost item from the stack and place in register
# PRINT - Print the register value

def string_is_integer?(n)
  n == n.to_i.to_s
end

def convert_to_method!(cmd, reg, stack)
  unless string_is_integer?(cmd)
    case cmd
    when 'PUSH' then stack.push(reg)
    when 'ADD' then reg += stack.pop
    when 'SUB' then reg -= stack.pop
    when 'MULT' then reg *= stack.pop
    when 'DIV' then reg /= stack.pop
    when 'MOD' then reg %= stack.pop
    when 'POP' then reg = stack.pop
    when 'PRINT' then puts reg
    else
      puts "ERROR COMPUTING COMMAND #{cmd}."
    end
  end
  reg = cmd.to_i if string_is_integer?(cmd)
  reg
end

def minilang(program)
  register = 0
  stack = Array.new
  program = program.split
  program.each { |input| register = convert_to_method!(input, register, stack) }
end

# (3 + (4 * 5) - 7) / (5 % 3)
minilang('3 PUSH 5 MOD PUSH 7 PUSH 3 PUSH 4 PUSH 5 MULT ADD SUB DIV PRINT')
# 8
puts '---'

minilang('PRINT')
# 0
puts '---'

minilang('5 PUSH 3 MULT PRINT')
# 15
puts '---'

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8
puts '---'

minilang('5 PUSH POP PRINT')
# 5
puts '---'

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7
puts '---'

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6
puts '---'

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12
puts '---'

minilang('-3 PUSH 5 SUB PRINT')
# 8
puts '---'

minilang('6 PUSH')
# (nothing printed; no PRINT commands)
