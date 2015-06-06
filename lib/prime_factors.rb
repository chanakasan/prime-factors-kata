class PrimeFactors

  def self.generate(input)
    result = []

    if input > 1
      if input % 2 === 0
        result.push(2)
        input = input / 2
      end

      if input > 1
        result.push(input)
      end
    end

    result
  end

end
