class CreatingTestLayout < MK::Layout
  attr :button, :container, :label

  def mk_layout
    @button = add NSButton, :button
    @container = add NSView, :container do |view|
      @label = add NSTextField, :label
      add NSControl
    end
  end

  def button_style(btn)
    btn.title = 'btn'
  end

  def label_style(lbl)
    lbl.stringValue = 'lbl'
  end

end


describe CreatingTestLayout do
  context('adding views') do
    before do
      @layout = CreatingTestLayout.new
    end

    it('should be a NSView') do
      @layout.should.be.kind_of(NSView)
    end
    it('should have a button') do
      @layout.subviews[0].should.be.kind_of(NSButton)
    end

    context('button styling') do
      before do
        @button = @layout.subviews[0]
      end
      it('should have a styled title') do
        @button.title.should == 'btn'
      end
    end

    it('should have a view') do
      @layout.subviews[1].should.be.kind_of(NSView)
    end

    context('adding subviews') do
      before do
        @view = @layout.subviews[1]
      end

      it('should also have subviews') do
        @view.subviews.length.should > 0
      end
      it('should have a label') do
        @view.subviews[0].should.be.kind_of(NSTextField)
      end
      it('should have a styled label') do
        @view.subviews[0].stringValue.should == 'lbl'
      end
      it('should have a control') do
        @view.subviews[1].should.be.kind_of(NSControl)
      end
    end

  end
end
