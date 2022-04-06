require_relative "../knight"

describe 'knight movement' do
  subject { CountKnightMovement.new }

  it 'takes zero moves from a3 to a3' do
    expect(subject.execute('a3', 'a3')).to eq(0)
  end

  it 'takes one move from a3 to b5' do
    expect(subject.execute('a3', 'b5')).to eq(1)
  end

  it 'takes one move from f5 to d6' do
    expect(subject.execute('f5','d6')).to eq(1)
  end

  it 'takes one move from f5 to e3' do
    expect(subject.execute('f5', 'e3')).to eq(1)
  end

  it 'takes one move from f5 to e7' do
    expect(subject.execute('f5', 'e7')).to eq(1)
  end

  it 'takes one move from f5 to g7' do
    expect(subject.execute('f5', 'g7')).to eq(1)
  end

  it 'takes two moves from f5 to d5' do
    expect(subject.execute('f5', 'd5')).to eq(2)
  end

  it 'takes two moves from f5 to e6' do
    expect(subject.execute('f5', 'e6')).to eq(2)
  end

  it 'takes two moves from d5 to c6' do
    expect(subject.execute('d5', 'c6')).to eq(2)
  end

  it 'takes two moves from e5 to c6' do
    expect(subject.execute('e5', 'c6')).to eq(1)
  end

  describe '#convert_from_chess_notation' do
    it 'returns {5, 6} when given f5' do
      expect(subject.convert_from_chess_notation("f5")).to eq({ column: 6, row: 5 })
    end

    it 'returns {1, 1} when given a1' do
      expect(subject.convert_from_chess_notation("a1")).to eq({ column: 1, row: 1 })
    end

    it 'returns {1, 2} when given a2' do
      expect(subject.convert_from_chess_notation("a2")).to eq({ column: 1, row: 2 })
    end
  end
end
