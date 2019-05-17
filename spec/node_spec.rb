require './spec/spec_helper'

RSpec.describe 'Node' do
  before :each do
    @node = Node.new('Burke')
  end

  it 'knows its surname' do
    expect(@node.surname).to eq('Burke')
  end

  it 'has no next node' do
    expect(@node.next_node).to eq(nil)
  end
end
