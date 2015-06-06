require_relative '../lib/prime_factors'

describe PrimeFactors do

  context ".generate" do

    it "returns an empty array for 1" do
      result = PrimeFactors.generate(1)

      expect(result).to be_kind_of(Array)
      expect(result.count).to eq(0)
    end

    it "returns non-empty array for 2" do
      result = PrimeFactors.generate(2)

      expect(result).to be_kind_of(Array)
      expect(result.count).to eq(1)
    end
  end
end
