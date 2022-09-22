require 'spec_helper'
Sandwich = Struct.new(:taste, :toppings)

RSpec.context 'An ideal sandwich' do
  describe 'hooks version' do
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

  describe 'PORO version' do
    let(:sandwich) { Sandwich.new('delicious', []) }

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
