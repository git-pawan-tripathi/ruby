module Foo
  extend self
  def foo
    :foo
  end
end

module Bar
  module_function
  def bar
    :bar
  end
end

class Baz
  include Foo, Bar
  def baz
    # both foo and bar can be called here
  end
end

puts Foo.foo     #=> :foo
puts Bar.bar     #=> :bar
puts Baz.new.foo #=> :foo
#`<main>': private method `bar' called for #<Baz:0x000055f2a97dc070> (NoMethodError)                                                       (BAD)
#puts Baz.new.bar #=> private method `bar' called for #<Baz:…> (NoMethodError)   (GOOD)
