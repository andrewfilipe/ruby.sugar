Ruby.sugar
==========
A simple first stab at a Sugar for the [Espresso text editor][espresso] for
[Ruby][] source development.

[espresso]: <http://macrabbit.com/espresso/> "The Espresso text editor, by MacRabbit"
[ruby]: <http://ruby-lang.org/> "The Ruby programming language"

Using
-----
First install any and all dependencies, listed below. The instructions for
doing so can be found on their respective homes.

Clone this project somewhere, with the following:
    
    git clone git://github.com/hawx/ruby.sugar.git ./Ruby.sugar
    
And then link it to your syntaxes directory:
    
    mkdir -p "~/Library/Application Support/Espresso/Sugars/"
    ln -s "$(pwd)/Ruby.sugar" "/Users/$(whoami)/Library/Application Support/Espresso/Sugars/"
    
Dependencies
------------
- [Regex.sugar](http://github.com/elliottcable/Regex.sugar "elliottcable's Regex.sugar on GitHub")

More information
----------------
You can reach me (elliottcable, the author of this project) in the Espresso
IRC channel almost 24/7:

> [##Espresso](irc://chat.freenode.net/##Espresso) on [Freenode](http://freenode.net/ "Freenode IRC network") ([open in browser](http://widget.mibbit.com/?settings=54db06d9920299f628121bb397aaa524&server=chat.freenode.net&channel=%23%23Espresso&noServerNotices=true&noServerMotd=true&autoConnect=true "Mibbit IRC gateway for ##Espresso"))

TODO
----
- Syntax/Itemizers
  - All other flow control elements (if/unless…then…else, case…when,
    begin…end, all of the above plus …rescue…ensure)
    - Make sure single line uses work as well, including rescue.
  - 'Fix' the whole method- and block-arguments thing, it's really inadequate
    right now. It really should be *describing* what arguments allow, not just
    pulling in the variable collection (for the most part).
  - Method calls, including arguments and blocks.
  - Class/module definitions ✓
  - Operators ✓
  - Fix the regular expression interpolation SyntaxInjection such that
    interpolations work inside other regex structures, such as groups
  - Octal/Hex, and Control/Meta string escapes.
  - Heredocs
  - Ranges
  - String-ish Symbol syntax (:'foo bar', :"gaz #{123}")
  - Strange symbols (:*, :[]=, etc) ✓
  - Arrays, including percent-delimited syntax (Might be hard, the syntax is
    so very simple) ✓
  - Hashes ✓
  - Special method names that aren't simple symbols ✓
  - `echoed shelling out`, as well as %x(the percent delimited variant)
  - More advanced heredoc support
    - Nesting, see Thomas' heredoc stuff in the Experimental Ruby tmbundle
    - Support embedded languages, especially via injection
  - Fix it so that slash-operators (division operators) are properly
    regcognized as different from regexen, where appropriate (see how `ruby`
    handles it here: http://gist.github.com/86009)
- CodeSense
  - Everything!
- Actions
  - Running Ruby scripts from within Espresso
  - Everything!
- All new 1.9 syntax
