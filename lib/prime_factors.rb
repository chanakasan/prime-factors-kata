class PrimeFactors
  PRIMES = [2,3,5,7,11]

  def self.generate(input)
    result = []

    if input > 1
      PRIMES.each do |prime_num|
        is_divisible = input % prime_num === 0
        result.push(prime_num) if is_divisible

        if is_divisible and input / prime_num > 1
          PRIMES.each do |prime_num2|
            is_divisible = input % prime_num2 === 0
            result.push(prime_num2) if is_divisible
          end
        end
      end
    end

    result
  end
end
