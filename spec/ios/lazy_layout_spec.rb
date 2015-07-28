class LazyLayoutTest < MK::Layout
  attr :button, :container, :label
  attr :button_style_called
  attr :label_style_called

  def mk_lazy_layout
    @button = add UIButton, :button
    @container = add UIView, :container do |view|
      @label = add UILabel, :label
      add UIControl
    end
  end

  def button_style(btn)
    btn.setTitle('btn', forState: UIControlStateNormal)
    @button_style_called = true
  end

  def label_style(lbl)
    lbl.text = 'lbl'
    @label_style_called = true
  end

end


describe LazyLayoutTest do
  context('creating a lazy layout') do
    before do
      @layout = LazyLayoutTest.new
    end

    context('before calling build!') do
      it('should not have subviews') do
        @layout.subviews.should == []
      end
      it('should not call any style methods') do
        @layout.button_style_called.should != true
        @layout.label_style_called.should != true
      end
    end

    context('after calling build!') do
      before do
        @layout.build!
      end

      it('should be a UIView') do
        @layout.should.be.kind_of(UIView)
      end
      it('should have a button') do
        @layout.button.should.be.kind_of(UIButton)
      end

      context('button styling') do
        before do
          @button = @layout.button
        end
        it('should have a styled title') do
          @button.titleForState(UIControlStateNormal).should == 'btn'
        end
      end

      it('should have a container') do
        @layout.container.should.be.kind_of(UIView)
        @layout.subviews[1].should == @layout.container
      end

      context('adding subviews') do
        before do
          @container = @layout.container
        end

        it('should also have subviews') do
          @container.subviews.length.should > 0
        end
        it('should have a label') do
          @container.subviews[0].should.be.kind_of(UILabel)
          @container.subviews[0].should == @layout.label
        end
        it('should have a styled label') do
          @container.subviews[0].text.should == 'lbl'
        end
        it('should have a control') do
          @container.subviews[1].should.be.kind_of(UIControl)
        end
      end
    end

  end
end
