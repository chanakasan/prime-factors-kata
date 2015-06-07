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
  end
end
