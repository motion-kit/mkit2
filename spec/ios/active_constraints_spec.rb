describe 'Constraints - activate/deactivate helpers' do

  before do
    @layout = MotionKit::Layout.new
    @constraint = nil
    @view = UIView.new
  end

  should 'should activate/deactivate constraints' do
    @layout.run_in_context(@view) do |view|
      @layout.auto_layout do |c|
        @constraint = c.height(10)
      end
      @layout.call_deferred_blocks
    end

    @view.constraints.count.should == 1
    @constraint.deactivate
    @view.constraints.count.should == 0
    @constraint.activate
    @view.constraints.count.should == 1

  end

end
