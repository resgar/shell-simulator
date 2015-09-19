class File
  attr_accessor :name, :parent, :id
  @@id = -1
  @@files = []

  def initialize(name, parent)
    @id = @@id = @@id + 1
    @name = name
    @parent = parent
    @@files << self
  end

  def self.all
    @@files
  end

  def self.find(id)
    @@files.detect { |f| f.id == id }
  end

  def self.delete(par = {})
    selected = @@files
    par.each do |key, value|
      selected = selected.select { |f| f.send(key) == value }
    end
    selected = selected[0]
    selected.parent = nil
  end
end