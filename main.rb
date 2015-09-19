require_relative 'string'
require_relative 'folder'
require_relative 'file'
require_relative 'user'
require_relative 'tree'


user = User.new("LiveUser", "live@user.com")
tree = Tree.new
tree.initial_tree(user.name)
tree.touch "home/LiveUser/myfile.txt"
tree.ls "home/LiveUser/"
