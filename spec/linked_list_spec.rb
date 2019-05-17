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

  it ''
end
