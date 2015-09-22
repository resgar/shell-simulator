require_relative 'string'
require_relative 'folder'
require_relative 'file'
require_relative 'user'
require_relative 'tree'


# Write your Commands here
user = User.new("LiveUser", "live@user.com")
user.tree.touch "home/LiveUser/myfile.txt"
user.tree.rm "home/LiveUser/myfile.txt"
user.tree.ls "home/LiveUser/"
