require_relative '../lib/prime_factors'

describe PrimeFactors do

  context ".generate" do

    it "returns an empty array for 1" do
      result = PrimeFactors.generate(1)

      expect(result).to be_kind_of(Array)
      expect(result.count).to eq(0)
    end
  end
end
