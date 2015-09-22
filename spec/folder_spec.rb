require 'rspec'
require_relative '../folder'

describe Folder do
  before :all do
    @folder = Folder.new('myfolder', -1)
  end
  #after { Folder.delete({id: @folder.id}) }

  it "sets the name of the folder correctly" do
    expect(@folder.name).to eq 'myfolder' 
  end

  it "lists all folders" do
    expect(Folder.all).to include @folder 
  end

  it "finds the correct folder" do
    expect(Folder.find(@folder.id)).to eq @folder
  end

  it "deletes the correct folder" do
    Folder.delete(id: @folder.id)
    expect(Folder.all).not_to include @folder
  end
end