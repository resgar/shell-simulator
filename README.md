# shell-simulator
This program is a Linux Shell simulator written in Ruby

To use this program you need to edit main.rb file.
Here is an example:

``` ruby
user = User.new("LiveUser", "live@user.com")
tree = Tree.new
tree.initial_tree(user.name)
tree.touch "home/LiveUser/myfile.txt"
tree.ls "home/LiveUser/"
```

This program supports the following commands:
pwd, ls, cd, mkdir, touch, rm, rmdir
