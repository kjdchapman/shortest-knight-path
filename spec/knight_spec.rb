require_relative "../knight"

describe 'knight movement' do
  subject { CountKnightMovement.new }

  it 'takes one move from a3 to b5' do
    expect(subject.execute('a3', 'b5')).to eq(1)
  end

  it 'takes zero moves from a3 to a3' do
    expect(subject.execute('a3', 'a3')).to eq(0)
  end

  it 'takes two moves from f5 to d5' do
    expect(subject.execute('f5', 'd5')).to eq(2)
  end

  it 'takes two moves from f5 to e3' do
    expect(subject.execute('f5', 'e3')).to eq(1)
  end

  it 'takes two moves from f5 to e6' do
    expect(subject.execute('f5', 'e6')).to eq(2)
  end
end