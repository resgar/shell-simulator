class User
  attr_accessor :name, :email, :tree

  def initialize(name, email)
    self.name = name
    self.email = email
    self.tree = Tree.new(@name)
  end
end