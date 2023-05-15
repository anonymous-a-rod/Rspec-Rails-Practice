require 'athlete'

describe 'Athlete' do

  it 'Expect to be falsey' do
    a = Athlete.new
    running = a.running?('walking')
    expect(running).to be_falsey
  end

  it 'Expect to be truthy' do
    a = Athlete.new
    running = a.running?('running')
    expect(running).to be_truthy
  end

end
