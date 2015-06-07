class PrimeFactors

  def self.generate(input)
    result = []
    candidate = 2

    while input > 1 do
      while input % candidate == 0
        result.push(candidate)
        input = input / candidate
      end

      candidate += 1
    end

    result
  end

end
