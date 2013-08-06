require 'wilson_interval'

describe "Wilson::Interval" do
  it "returns correct z" do
    wilson = Wilson::Interval.new(p_hat: 0.5, total: 1000, confidence: 0.99)
    wilson.send(:z).round(8).should == 2.57582933

    wilson = Wilson::Interval.new(p_hat: 0.5, total: 1000, confidence: 0.95)
    wilson.send(:z).round(8).should == 1.95996397

    wilson = Wilson::Interval.new(p_hat: 0.5, total: 1000, confidence: 0.50)
    wilson.send(:z).round(8).should == 0.67448976 

    wilson = Wilson::Interval.new(p_hat: 0.5, total: 1000, confidence: 0.25)
    wilson.send(:z).round(8).should == 0.31863936
  end

  it "correctly calculates p_hat" do
    wilson = Wilson::Interval.new(p_hat: 0.5, total: 1000, confidence: 0.95)
    wilson.lower_bound.round(4).should == 0.4691
    wilson.upper_bound.round(4).should == 0.5309

    wilson = Wilson::Interval.new(successes: 500, total: 1000, confidence: 0.95)
    wilson.lower_bound.round(4).should == 0.4691
    wilson.upper_bound.round(4).should == 0.5309
  end

  it "correctly calculates lower and upper bounds" do
    wilson = Wilson::Interval.new(successes: 500, total: 1000, confidence: 0.99)
    wilson.lower_bound.round(4).should == 0.4594
    wilson.upper_bound.round(4).should == 0.5406

    wilson = Wilson::Interval.new(successes: 500, total: 1000, confidence: 0.95)
    wilson.lower_bound.round(4).should == 0.4691
    wilson.upper_bound.round(4).should == 0.5309

    wilson = Wilson::Interval.new(successes: 500, total: 1000, confidence: 0.50)
    wilson.lower_bound.round(4).should == 0.4893
    wilson.upper_bound.round(4).should == 0.5107

    wilson = Wilson::Interval.new(successes: 1000, total: 1000, confidence: 0.95)
    wilson.lower_bound.round(4).should == 0.9962
    wilson.upper_bound.round(4).should == 1

    wilson = Wilson::Interval.new(successes: 0, total: 1000, confidence: 0.95)
    wilson.lower_bound.round(4).should == 0
    wilson.upper_bound.round(4).should == 0.0038

    wilson = Wilson::Interval.new(successes: 250, total: 1000, confidence: 0.95)
    wilson.lower_bound.round(4).should == 0.2242
    wilson.upper_bound.round(4).should == 0.2778

    wilson = Wilson::Interval.new(successes: 750, total: 1000, confidence: 0.95)
    wilson.lower_bound.round(4).should == 0.7222
    wilson.upper_bound.round(4).should == 0.7758
  end
end
