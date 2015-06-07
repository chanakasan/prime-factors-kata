require_relative '../lib/prime_factors'

describe PrimeFactors do

  context ".generate" do

    it "returns an empty array for 1" do
      expect(PrimeFactors.generate(1)).to eq([])
    end

    it "returns [2] for 2" do
      expect(PrimeFactors.generate(2)).to eq([2])
    end

    it "returns [3] for 3" do
      expect(PrimeFactors.generate(3)).to eq([3])
    end

    it "returns [2,2] for 4" do
      expect(PrimeFactors.generate(4)).to eq([2,2])
    end

    it "returns [2,3] for 6" do
      expect(PrimeFactors.generate(6)).to eq([2,3])
    end

    it "returns [2,2,2] for 8" do
      expect(PrimeFactors.generate(8)).to eq([2,2,2])
    end

    it "returns [3,3] for 9" do
      expect(PrimeFactors.generate(9)).to eq([3,3])
    end

    it "returns same results as Ruby's built-in Prime numbers support" do
      expect(PrimeFactors.generate(10)).to eq(ruby_prime_factorization(10))
      expect(PrimeFactors.generate(16)).to eq(ruby_prime_factorization(16))
      expect(PrimeFactors.generate(64)).to eq(ruby_prime_factorization(64))
      expect(PrimeFactors.generate(100)).to eq(ruby_prime_factorization(100))
      expect(PrimeFactors.generate(1000)).to eq(ruby_prime_factorization(1000))
      expect(PrimeFactors.generate(10000)).to eq(ruby_prime_factorization(10000))
      expect(PrimeFactors.generate(100000)).to eq(ruby_prime_factorization(100000))
      expect(PrimeFactors.generate(1000000)).to eq(ruby_prime_factorization(1000000))
    end
  end

  require 'prime'

  def ruby_prime_factorization(n)
    Prime.prime_division(n).flat_map { |factor, power| [factor] * power }
  end
end
