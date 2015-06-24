describe 'AutoLayoutAltUsage' do
  before do
    @view = UIView.new()
    @al = MK::AutoLayoutFactory.new(@view)
  end

  context('setting the target view') do
    it('should set the target') do
      target = UIView.new()
      c = @al.set(target).left(:superview)
      c.target.should == target
    end
    it('should revert to the default view') do
      target = UIView.new()
      c1 = @al.set(target).left(:superview)
      c2 = @al.left(:superview)
      c2.target.should == @view
    end
  end

  context('passing in the other view') do
    it('should set the other view') do
      c = @al.left(:superview)
      c.relative_to.should == :superview
    end
  end

  context('passing view and relationship to left()') do
    it('should set the other view') do
      c = @al.left(:superview, :gte)
      c.relative_to.should == :superview
    end
    it('should set the relationship') do
      c = @al.left(:superview, :gte)
      c.relationship.should == :gte
    end
  end

  context('passing constant to width()') do
    it('should set the constant') do
      c = @al.width(5)
      c.constant.should == 5
    end
  end

  context('setting other attribute using equals()') do
    before do
      @c = @al.left.equals(:superview, :right)
    end
    it('should set attribute') do
      @c.attribute.should == :left
    end
    it('should set other view') do
      @c.relative_to.should == :superview
    end
    it('should set other attribute') do
      @c.attribute2.should == :right
    end
  end

  context('using plus on a single constraint') do
    it('should set the constant') do
      c = @al.left.equals(:superview).plus(5)
      c.constant.should == 5
    end
  end

  context('using times on a single constraint') do
    it('should set the constant') do
      c = @al.left.equals(:superview).times(5)
      c.multiplier.should == 5
    end
  end

  context('using plus on a compound constraint') do
    it('should set the constants using single value') do
      c = @al.top_left.equals(:superview).plus(5)
      c.constant.should == [5, 5]
    end
    it('should set multiple constants using array') do
      c = @al.top_left.equals(:superview).plus([5, 6])
      c.constant.should == [5, 6]
    end
    it('should set multiple constants using dictionary') do
      c = @al.top_left.equals(:superview).plus({x: 5, y: 6})
      c.constant.should == [5, 6]
    end
  end

  context('using times on a compound constraint') do
    it('should set the multipliers using single value') do
      c = @al.top_left.equals(:superview).times(5)
      c.multiplier.should == [5, 5]
    end
    it('should set multiple multipliers using array') do
      c = @al.top_left.equals(:superview).times([5, 6])
      c.multiplier.should == [5, 6]
    end
    it('should set multiple multipliers using dictionary') do
      c = @al.top_left.equals(:superview).times({x: 5, y: 6})
      c.multiplier.should == [5, 6]
    end
  end
end
