class MultipleNamesTestLayout < MK::Layout
  attr :start_button, :stop_button
  attr :name_label, :email_label

  def mk_layout
    @start_button = add NSButton, :start_button, :button
    @stop_button = add NSButton, :stop_button, :button
    @name_label = add NSTextField, :name_label, :label
    @email_label = add NSTextField, :email_label, :label
  end

  def start_button_style(btn)
    btn.title = 'start'
  end

  def stop_button_style(btn)
    btn.title = 'stop'
  end

  def button_style(btn)
    btn.tag = 1
  end

  def name_label_style(lbl)
    lbl.stringValue = 'name'
  end

  def email_label_style(lbl)
    lbl.stringValue = 'email'
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
        @button.title.should == 'start'
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
        @button.title.should == 'stop'
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
        @label.stringValue.should == 'name'
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
        @label.stringValue.should == 'email'
      end
      it('should have a styled tag') do
        @label.tag.should == 2
      end
    end

  end
end
