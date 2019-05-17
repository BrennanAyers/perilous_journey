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
  end

  it 'can return a string of a single family' do
    @list.append("West")
    expect(@list.to_string).to eq("The West Family")
  end
end
