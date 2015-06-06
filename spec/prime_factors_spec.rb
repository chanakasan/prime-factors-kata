require_relative '../lib/prime_factors'

describe PrimeFactors do

  context ".generate" do

    it "returns an empty array for 1" do
      result = PrimeFactors.generate(1)

      expect(result).to eq([])
    end

    it "returns non-empty array for 2" do
      result = PrimeFactors.generate(2)

      expect(result).to eq([2])
    end

    it "returns non-empty array for 3" do
      result = PrimeFactors.generate(3)

      expect(result).to eq([3])
    end
  end
end
