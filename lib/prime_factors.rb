class PrimeFactors

  def self.generate(n)
    primes = []
    candidate = 2

    while n > 1 do
      while n % candidate == 0
        primes.push(candidate)
        n = n / candidate
      end

      candidate += 1
    end

    primes
  end

end
