require 'dog'

describe Dog do
  describe '#bark' do
    it 'returns the "Woof!"' do
      expect(subject.bark).to eq('Woof!')
    end
  end

  describe '#feed' do
    context 'the dog is hungry'
    subject { described_class.new(hunger_level: 7) }

    it 'is no longer hungry' do
      subject.feed
      expect(subject).to_not be_hungry
    end
  end

  describe '#hungry' do
    context 'when hunger_level is more than 5' do
      subject { described_class.new(hunger_level: 7) }

      it 'returns true' do
        # dog = described_class.new(hunger_level: 7)
        # expect(hungry_dog.hungry?).to eq(true)
        expect(subject).to be_hungry
      end
    end

    context 'when hunger_level is equal to or less than 5' do
      subject { described_class.new(hunger_level: 5) }

      it 'returns false' do
        # dog = described_class.new(hunger_level: 5)
        # expect(unhungry_dog.hungry?).to eq(false)
        expect(subject).to_not be_hungry
      end
    end
  end
end
