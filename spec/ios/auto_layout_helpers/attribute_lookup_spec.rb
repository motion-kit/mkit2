describe 'Constraints - attribute lookup' do

  MotionKit::Constraint::Attributes.each do |key, value|
    it "should lookup #{key.inspect}" do
      MotionKit::Constraint.attribute_lookup(key).should == value
    end
    it "should return NSLayoutAttribute-#{key}" do
      MotionKit::Constraint.attribute_lookup(value).should == value
    end
    it "should reverse NSLayoutAttribute-#{key}" do
      if key == :last_baseline
        MotionKit::Constraint.attribute_reverse(value).should == :baseline
        NSLayoutAttributeBaseline.should == NSLayoutAttributeLastBaseline
      else
        MotionKit::Constraint.attribute_reverse(value).should == key
      end
    end
  end

  it 'should raise InvalidAttributeError' do
    -> do
      MotionKit::Constraint.attribute_lookup(:foo)
    end.should.raise(MotionKit::InvalidAttributeError)
  end

end
