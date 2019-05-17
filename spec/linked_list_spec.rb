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

    expect(@list.head.surnme).to eq("Jay-Z")

    expect(@list.to_string).to eq("The Jay-Z Family, followed by the West Family, followed by the Kanye Family")

    expect(@list.count).to eq(3)
  end
end
