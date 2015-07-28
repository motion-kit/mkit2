class LayoutWithStylesheet < MK::Stylesheet

  def button_style(btn)
    btn.title = 'btn'
  end

  def label_style(lbl)
    lbl.stringValue = 'lbl'
  end

  def label1_style(lbl)
    lbl.stringValue = 'lbl1'
  end

  def label2_style(lbl)
    lbl.stringValue = 'lbl2'
  end

  def label3_style(lbl)
    lbl.stringValue = 'lbl3'
    reapply do
      lbl.stringValue = 'LBL3'
    end
  end

end

class LayoutWithStylesheetTest < MK::Layout
  attr :button, :container, :label
  attr :container2, :label1, :label2, :label3, :label4

  stylesheet LayoutWithStylesheet

  def mk_layout
    @button = add NSButton, :button
    @container = add NSView, :container do |view|
      @label = add NSTextField, :label
      add NSControl
    end
    @container2 = add NSView, :container2 do |view|
      @label3 = insert(NSTextField, :label3)
      @label1 = insert(NSTextField, below: @label3, names: [:label1])
      @label2 = insert(NSTextField, :label2, index: 1)
      @label4 = insert(NSTextField, above: @label3) do |lbl|
        lbl.stringValue = 'lbl4'
      end
    end
  end

end


describe LayoutWithStylesheetTest do
  context('adding views') do
    before do
      @layout = LayoutWithStylesheetTest.new
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

    context('inserting subviews') do
      before do
        @container = @layout.container2
      end

      it('should have subviews') do
        @container.subviews.length.should > 0
      end
      it('should have label1 at index 1') do
        @container.subviews[0].should == @layout.label1
      end
      it('should style label1') do
        @layout.label1.stringValue.should == 'lbl1'
      end
      it('should have label2 at index 2') do
        @container.subviews[1].should == @layout.label2
      end
      it('should style label2') do
        @layout.label2.stringValue.should == 'lbl2'
      end
      it('should have label3 at index 3') do
        @container.subviews[2].should == @layout.label3
      end
      it('should style label3') do
        @layout.label3.stringValue.should == 'lbl3'
      end
      it('should have label4 at index 4') do
        @container.subviews[3].should == @layout.label4
      end
      it('should style label4') do
        @layout.label4.stringValue.should == 'lbl4'
      end
    end

    context('reapply') do
      before do
        @layout.reapply!
      end

      it('should reapply the stylesheet') do
        @layout.label3.stringValue.should == 'LBL3'
      end
    end

  end
end
