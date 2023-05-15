require 'player'

describe Player do
  p = Player.new

  it 'Calculates the correct credits remaining' do
    p.credits = 1.5
    p.sub_credits(1.3)
    expect(p.credits).to be_within(0.0001).of (0.1999)
  end

  it 'it returns the correct value for the players active status' do
    p.active = "YES"
    expect(p.active).to be_truthy
  end

  it 'it returns the true when player is nil' do
    p.active = nil
    expect(p.active).to be_falsey
  end

  it 'returns an error when sub_credits is passed a zero credit value' do
    p.credits = 2
    expect {p.sub_credits(0)}.to raise_exception(StandardError)
  end


end