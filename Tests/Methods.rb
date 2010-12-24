# This is a test for some crazy methods ruby has
# in pairs, first with brackets second without

def normal_method(arg1, arg2)
end
def normal_method arg1, arg2
end

def <<(val)
end
def << val
end

def <(val)
end
def < val
end

def <=>(val)
end
def <=> val
end

def [](val)
end
def [] val
end

def +(val)
end
def + val
end

def -(val)
end
def - val
end

def /(val)
end
def / val
end

def *(val)
end
def * val
end

def %(val)
end
def % val
end

def value=(val)
end
def value= val
end

# Method calls
# ------------
# Sometimes the arguments within brackets do not highlight as needed
# which is obviously not what we want.
# Turns out if you add "def xxx" the line before any function call it 
# blanks out highlighting.

my_method :sym, 123, "hello"
my_method(:sym, 123, "hello")
my_method(:sym, 123, "hello") {|arg| p arg }

def method
  what.my_method(:sym, 123, "hello")
end

def expires(amount, *values) # it's because of this line (comment out to see)
  values << {} unless values.last.kind_of?(Hash) # here
end
