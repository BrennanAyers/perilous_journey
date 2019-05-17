require 'spec_helper'
require './lib/linked_list'

describe 'Linked List' do
  before :each do
    @list = LinkedList.new
  end

  it 'has no head' do
    expect(@list.head).to eq(nil)
  end

  it 'can create a node with append' do
    @list.append("West")
    expect(@list.head.surname).to eq("West")
  end

  it 'makes a new node with no next node' do
    @list.append("West")
    expect(@list.head.next_node).to eq(nil)
  end

  it 'can return a count of its nodes' do
    @list.append("West")
    expect(@list.count).to eq(1)

    @list.append("Kanye")
    expect(@list.count).to eq(2)
  end

  it 'can return a string of a single family' do
    @list.append("West")
    expect(@list.to_string).to eq("The West Family")
  end

  it 'can append a family to the next node' do
    @list.append("West")
    @list.append("Kanye")
    expect(@list.head.next_node.surname).to eq("Kanye")
  end

  it 'can return a string of multiple families' do
    @list.append("West")
    @list.append("Kanye")

    expect(@list.to_string).to eq("The West Family, followed by the Kanye Family")
  end

  it 'should return an error string with no families' do
    expect(@list.to_string).to eq("Sorry, no families here!")
  end

  it 'can prepend a family to the list' do
    @list.append("West")
    @list.append("Kanye")
    @list.prepend("Jay-Z")

    expect(@list.head.surname).to eq("Jay-Z")

    expect(@list.to_string).to eq("The Jay-Z Family, followed by the West Family, followed by the Kanye Family")

    expect(@list.count).to eq(3)
  end

  it 'can prepend an empty list' do
    @list.prepend("West")

    expect(@list.head.surname).to eq("West")

    expect(@list.to_string).to eq("The West Family")

    expect(@list.count).to eq(1)
  end

  it 'can insert a family into a position' do
    @list.append("West")
    @list.append("Kanye")
    @list.prepend("Jay-Z")
    @list.insert(1, "Beyonce")

    expect(@list.head.surname).to eq("Jay-Z")

    expect(@list.to_string).to eq("The Jay-Z Family, followed by the Beyonce Family, followed by the West Family, followed by the Kanye Family")

    expect(@list.count).to eq(4)
  end

  it 'can find a single family by index' do
    @list.append("West")
    @list.append("Kanye")
    @list.prepend("Jay-Z")
    @list.insert(1, "Beyonce")

    expect(@list.find(2, 1)).to eq("The West Family")
  end

  it 'can find multiple families by index' do
    @list.append("West")
    @list.append("Kanye")
    @list.prepend("Jay-Z")
    @list.insert(1, "Beyonce")

    expect(@list.find(1, 3)).to eq("The Beyonce Family, followed by the West Family, followed by the Kanye Family")
  end

  it 'can check if a family is included' do
    @list.append("West")
    @list.append("Kanye")
    @list.prepend("Jay-Z")
    @list.insert(1, "Beyonce")

    expect(@list.includes?("Beyonce")).to eq(true)
    expect(@list.includes?("Kardashian")).to eq(false)
  end
end
