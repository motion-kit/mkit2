class FindingViewsTestLayout < MK::Layout
  attr :start_button, :stop_button
  attr :name_label, :email_label

  def mk_layout
    @start_button = add UIButton, :start_button, :button
    @stop_button = add UIButton, :stop_button, :button
    @name_label = add UILabel, :name_label, :label
    @email_label = add UILabel, :email_label, :label
  end

end


describe FindingViewsTestLayout do
  context('finding views by name') do
    before do
      @layout = FindingViewsTestLayout.new
    end

    context('finding views by unique name') do
      [:start_button, :stop_button, :name_label, :email_label].each do |view_name|
        context(view_name) do
          before do
            @view = @layout.send(view_name)
          end
          it("should be found with get(#{view_name.inspect})") do
            @layout.get(view_name).should == @view
          end
          it("should be found with first(#{view_name.inspect})") do
            @layout.first(view_name).should == @view
          end
          it("should be found with last(#{view_name.inspect})") do
            @layout.last(view_name).should == @view
          end
        end
      end
    end

    context('finding multiple views') do
      {
        button: [:start_button, :stop_button],
        label: [:name_label, :email_label],
      }.each do |category_name, view_names|
        context(category_name) do
          it("should find the views") do
            @layout.all(category_name).count.should == view_names.count
          end
          view_names.each do |include_name|
            it("should include #{include_name}") do
              view = @layout.send(include_name)
              @layout.all(category_name).should.include?(view)
            end
          end
        end
      end
    end

  end
end
