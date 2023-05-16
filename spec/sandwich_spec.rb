require 'sandwich'

describe Sandwich do
  context 'when the sandwich should be vegan' do
    let(:sandwich) { Sandwich.new(false, false, %w[lettuce mustard ketchup]) }

    it 'should not have meat' do
      expect(sandwich.meat).to eq(false)
    end

    it 'should not have cheese' do
      expect(sandwich.cheese).to eq(false)
    end

    it 'should not have mayo' do
      expect(sandwich.condiments).to_not include('mayo')
    end
  end

  context 'when the sandwich should not be vegan' do
    before(:each) do
      @sandwich = Sandwich.new(true, true, %w[lettuce mustard mayo]) 
    end
    

    it 'should not have meat' do
      expect(@sandwich.meat).to eq(true)
    end

    it 'should not have cheese' do
      expect(@sandwich.cheese).to eq(true)
    end

    it 'should not have mayo' do
      expect(@sandwich.condiments).to include('mayo')
    end
  end
end
