require 'spec_helper'
Sandwich = Struct.new(:taste, :toppings)


RSpec.context 'hooks version' do
  def sandwich
    Sandwich.new('delicious', [])
  end

  describe 'hooks An ideal sandwich' do
    before { @sandwich = Sandwich.new('delicious', []) }

    it 'is delicious' do
      taste = @sandwich.taste
      expect(taste).to eq('delicious')
    end

    it 'lets me add toppings' do
      @sandwich.toppings << 'cheese'
      toppings = @sandwich.toppings
      expect(toppings).not_to be_empty
    end
  end
end

RSpec.context 'PORO version' do

  def sandwich
    @sandwich ||= Sandwich.new('delicious', [])
  end

  describe 'An ideal sandwich' do
    it 'is delicious' do
      taste = sandwich.taste
      expect(taste).to eq('delicious')
    end

    it 'lets me add toppings' do
      sandwich.toppings << 'cheese'
      toppings = sandwich.toppings
      expect(toppings).not_to be_empty
    end
  end
end
