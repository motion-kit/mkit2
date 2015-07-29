class TestViewAttrLayout < MK::Layout
  view :button
  view :label
  view :text_field, :text_view

  def mk_layout
    add NSButton, :button
    add NSTextField, :text_field
    add NSTextView, :text_view
  end

  def mk_lazy_layout
    add NSTextField, :label
  end

end


describe 'View attr' do

  before do
    @layout = TestViewAttrLayout.new
  end

  it 'should get :button' do
    button = @layout.button
    button.should.be.kind_of(NSButton)
  end

  it 'should return the same :button' do
    button = @layout.button
    button.should == @layout.button
  end

  it 'should call layout if the view doesnt exist' do
    label = @layout.label
    label.should.be.kind_of(NSTextField)
    label.should == @layout.label
  end

  it 'should handle multiple views' do
    text_field = @layout.text_field
    text_field.should.be.kind_of(NSTextField)
    text_view = @layout.text_view
    text_view.should.be.kind_of(NSTextView)
  end
end
