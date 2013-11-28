require 'spec_helper'

describe "Ad" do

  context "when saving" do
    it "should require a name" do
      expect(FactoryGirl.build(:ad, name: '')).to_not be_valid
    end

    it "should require a file_name" do
      expect(FactoryGirl.build(:ad, file_name: '')).to_not be_valid
    end

    it "should require a category id" do
      expect(FactoryGirl.build(:ad, category: nil)).to_not be_valid
    end

    it "should require a position id" do
      expect(FactoryGirl.build(:ad, position: nil)).to_not be_valid
    end

    it "should require a enabled status" do
      expect(FactoryGirl.build(:ad).enabled).to eq(true)
      expect(FactoryGirl.build(:ad, enabled: false).enabled).to eq(false)
    end
  end

end
