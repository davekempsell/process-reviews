require 'report'

RSpec.describe Report do
  context "receives a single value" do
    it "return a report" do
      my_report = Report.new("Green")
      expect(my_report.run).to eq "Green: 1\nRed: 0\nAmber: 0"
    end
  end

  context "receives a different single value" do
    it "return a report" do
      my_report = Report.new("Red")
      expect(my_report.run).to eq "Green: 0\nRed: 1\nAmber: 0"
    end
  end

  context "receives two different values" do
    it "returns both values" do
      my_report = Report.new("Green, Amber")
      expect(my_report.run).to eq "Green: 1\nRed: 0\nAmber: 1"
    end
  end

  context "receives a value that isn't Green, Amber, or Red" do
    it "returns a report showing 'Uncounted'" do
      my_report = Report.new("Green, Amber, Blue")
      expect(my_report.run).to eq "Green: 1\nRed: 0\nAmber: 1\nUncounted: 1"
    end
  end

  context "receives an input that isn't a string" do
    it "fails, with 'Input Invalid error message" do
      my_report = Report.new(23)
      expect { my_report.run }.to raise_error "ERROR: Input Invalid"
    end
  end
end
