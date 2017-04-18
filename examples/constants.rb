def puts_constants(constant)
  puts constant.name
  constant.constants.each do |child_constant|
    puts_constants(constant.const_get(child_constant))
  end
end
puts_constants(MineSweeper)

class FooBar
  Cell = ::MineSweeper::AfterClick::EmptyCell
end
puts_constants(FooBar)
