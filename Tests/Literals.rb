'string'
10448
2142.51543
:symbol
:'stringbol'
:"dstringbol"

# arrays
["an array", "of", 4, "items"]

[
  "an", [
    "array", [
      "in",
    ]
  ]
  "an", [
    "array", 
  ]
]

def [](not an array)
end



something[5] # not an array!
method.call(x)

hey = 5
hash = {:a => "dog"}
{
  "key" => :value,
  "what" => 10,
  {
    "what" => hey
  }
}

[:a, :b, :c].each {|i| puts i } # shouldn’t be hash!

%w(#{what}hey)
%w{hey}
%W(#{what})
%W{#{what}}

configure do |a, b|
  puts "hi"
end

configure(x, b) {|a, b| puts "hi" }