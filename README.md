# shell-simulator
This program is a Linux Shell simulator written in Ruby

To use this program you need to edit main.rb file.
Here is an example:

``` ruby
user = User.new("LiveUser", "live@user.com")
user.tree.touch "home/LiveUser/myfile.txt"
user.tree.ls "home/LiveUser/"
```

This program supports the following commands:
pwd, ls, cd, mkdir, touch, rm, rmdir
