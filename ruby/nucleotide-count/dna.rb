class DNA

  def initialize sequence
    @sequence = sequence.chars
    list = {'A' => 0, 'T' => 0, 'C' => 0, 'G' => 0}
    @sequence.each do |c|
      raise ArgumentError unless list.has_key?(c)
    end
  end

  def count search
    list = {'U' => 0, 'A' => 0, 'T' => 0, 'C' => 0, 'G' => 0}
    if search.empty? || list.has_key?(search)
      sum = 0
      @sequence.each do |c|
        sum += 1 if search == c
      end
      sum
    else
      raise ArgumentError
    end
  end

  def nucleotide_counts
    list = {'A' => 0, 'T' => 0, 'C' => 0, 'G' => 0}
    @sequence.each do |char|
      list[char.to_s] += 1
    end
    list
  end
end
