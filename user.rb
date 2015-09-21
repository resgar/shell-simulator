class User
  attr_accessor :name, :email, :tree

  def initialize(name, email)
    @name = name
    @email = email
    @tree = Tree.new(@name)
  end
end