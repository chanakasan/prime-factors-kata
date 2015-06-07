require_relative '../lib/prime_factors'

describe PrimeFactors do

  context ".generate" do

    it "returns an empty array for 1" do
      result = PrimeFactors.generate(1)

      expect(result).to eq([])
    end

    it "returns [2] for 2" do
      result = PrimeFactors.generate(2)

      expect(result).to eq([2])
    end

    it "returns [3] for 3" do
      result = PrimeFactors.generate(3)

      expect(result).to eq([3])
    end

    it "returns [2,2] for 4" do
      result = PrimeFactors.generate(4)

      expect(result).to eq([2,2])
    end

    it "returns [2,3] for 6" do
      result = PrimeFactors.generate(6)

      expect(result).to eq([2,3])
    end

    it "returns [2,2,2] for 8" do
      result = PrimeFactors.generate(8)

      expect(result).to eq([2,2,2])
    end

    it "returns [3,3] for 9" do
      result = PrimeFactors.generate(9)

      expect(result).to eq([3,3])
    end
  end
end
