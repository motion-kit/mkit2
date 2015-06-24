class RestyleTestLayout < MK::Layout
  attr :button, :container, :label

  def mk_layout
    @button = add UIButton, :button
    @container = add UIView, :container do |view|
      @label = add UILabel, :label
      add UIControl
    end
  end

  def button_style(btn)
    btn.tag = 1
    initial do
      btn.setTitle('btn', forState: UIControlStateNormal)
      btn.tag = 2
    end
    restyle do
      btn.tag = 3
    end
  end

  def label_style(lbl)
    lbl.text = 'lbl'
  end

end


describe RestyleTestLayout do
  context('restyling a layout') do
    before do
      @layout = RestyleTestLayout.new
      @button = @layout.button
    end

    context('initial button styling') do
      it('should have a styled title') do
        @button.titleForState(UIControlStateNormal).should == 'btn'
      end
      it('should have a styled tag') do
        @button.tag.should == 2
      end
    end

    context('restyled button styling') do
      it('should set the tag') do
        @button.reapply!
        @button.tag.should == 3
      end
      it('should not set the title') do
        new_title = 'BTN'
        @button.setTitle(new_title, forState: UIControlStateNormal)
        @button.reapply!
        @button.titleForState(UIControlStateNormal).should == new_title
      end
    end

  end
end
