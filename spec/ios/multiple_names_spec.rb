class MultipleNamesTestLayout < MK::Layout
  attr :start_button, :stop_button
  attr :name_label, :email_label

  def mk_layout
    @start_button = add UIButton, :start_button, :button
    @stop_button = add UIButton, :stop_button, :button
    @name_label = add UILabel, :name_label, :label
    @email_label = add UILabel, :email_label, :label
  end

  def start_button_style(btn)
    btn.setTitle('start', forState: UIControlStateNormal)
  end

  def stop_button_style(btn)
    btn.setTitle('stop', forState: UIControlStateNormal)
  end

  def button_style(btn)
    btn.tag = 1
  end

  def name_label_style(lbl)
    lbl.text = 'name'
  end

  def email_label_style(lbl)
    lbl.text = 'email'
  end

  def label_style(lbl)
    lbl.tag = 2
  end

end


describe MultipleNamesTestLayout do
  context('assigning multiple names') do
    before do
      @layout = MultipleNamesTestLayout.new
    end

    context('start button styling') do
      before do
        @button = @layout.start_button
      end
      it('should have a styled title') do
        @button.titleForState(UIControlStateNormal).should == 'start'
      end
      it('should have a styled tag') do
        @button.tag.should == 1
      end
    end

    context('stop button styling') do
      before do
        @button = @layout.stop_button
      end
      it('should have a styled title') do
        @button.titleForState(UIControlStateNormal).should == 'stop'
      end
      it('should have a styled tag') do
        @button.tag.should == 1
      end
    end

    context('name label styling') do
      before do
        @label = @layout.name_label
      end
      it('should have a styled title') do
        @label.text.should == 'name'
      end
      it('should have a styled tag') do
        @label.tag.should == 2
      end
    end

    context('email label styling') do
      before do
        @label = @layout.email_label
      end
      it('should have a styled title') do
        @label.text.should == 'email'
      end
      it('should have a styled tag') do
        @label.tag.should == 2
      end
    end

  end
end
