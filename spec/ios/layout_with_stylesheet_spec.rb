class LayoutWithStylesheet < MK::Stylesheet

  def button_style(btn)
    btn.setTitle('btn', forState: UIControlStateNormal)
  end

  def label_style(lbl)
    lbl.text = 'lbl'
  end

  def label1_style(lbl)
    lbl.text = 'lbl1'
  end

  def label2_style(lbl)
    lbl.text = 'lbl2'
  end

  def label3_style(lbl)
    lbl.text = 'lbl3'
    reapply do
      lbl.text = 'LBL3'
    end
  end

end


class LayoutWithStylesheetTest < MK::Layout
  attr :button, :container, :label
  attr :container2, :label1, :label2, :label3, :label4

  stylesheet LayoutWithStylesheet

  def mk_layout
    @button = add UIButton, :button
    @container = add UIView, :container do |view|
      @label = add UILabel, :label
      add UIControl
    end
    @container2 = add UIView, :container2 do |view|
      @label3 = insert(UILabel, :label3)
      @label1 = insert(UILabel, below: @label3, names: [:label1])
      @label2 = insert(UILabel, :label2, index: 1)
      @label4 = insert(UILabel, above: @label3) do |lbl|
        lbl.text = 'lbl4'
      end
    end
  end

end


describe LayoutWithStylesheetTest do
  context('creating a layout') do
    before do
      @layout = LayoutWithStylesheetTest.new
    end

    it('should be a UIView') do
      @layout.should.be.kind_of(UIView)
    end
    it('should have a stylesheet') do
      @layout.stylesheet.should.be.kind_of(MK::Stylesheet)
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
        @layout.label1.text.should == 'lbl1'
      end
      it('should have label2 at index 2') do
        @container.subviews[1].should == @layout.label2
      end
      it('should style label2') do
        @layout.label2.text.should == 'lbl2'
      end
      it('should have label3 at index 3') do
        @container.subviews[2].should == @layout.label3
      end
      it('should style label3') do
        @layout.label3.text.should == 'lbl3'
      end
      it('should have label4 at index 4') do
        @container.subviews[3].should == @layout.label4
      end
      it('should style label4') do
        @layout.label4.text.should == 'lbl4'
      end
    end

    context('reapply') do
      before do
        @layout.reapply!
      end

      it('should reapply the stylesheet') do
        @layout.label3.text.should == 'LBL3'
      end
    end

  end
end
