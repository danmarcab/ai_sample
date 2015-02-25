require 'spec_helper'

describe SmartSample::FitnessProportionateSelector do
  describe "#select" do
    subject {described_class.new([0.1, 0.3, 0.6])}

    it "returns the number of element requested" do
      expect(subject.select(1).size).to eq(1)
      expect(subject.select(5).size).to eq(5)
      expect(subject.select(10).size).to eq(10)
    end

    context "probability distribution" do
      it "returns the indexes following the weighted proportion" do
        indexes = subject.select(100000)
        expect(indexes.count(0)).to be_within(1000.0).of(10000.0)
        expect(indexes.count(1)).to be_within(1000.0).of(30000.0)
        expect(indexes.count(2)).to be_within(1000.0).of(60000.0)
      end
    end
  end
end
