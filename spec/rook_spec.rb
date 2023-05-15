require 'rook'


describe 'Rook' do 
  rook = Rook.new

  it 'returns the correct points value' do
    rook_points = rook.points
    expect(rook_points).to be(5)
  end

  it 'returns the correct name' do
    rook_name = rook.name
    expect(rook_name).to eq('Rook')
  end

  it 'returns a greater value than a pawn' do
    rook_points = rook.points
    expect(rook_points).to be > 1
  end
end