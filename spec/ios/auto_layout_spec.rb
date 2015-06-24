class AutoLayoutTestLayout < MK::Layout
  attr :button
  attr :view

  attr :left_constraint
  attr :min_left_constraint
  attr :max_left_constraint
  attr :leading_constraint
  attr :min_leading_constraint
  attr :max_leading_constraint
  attr :center_x_constraint
  attr :min_center_x_constraint
  attr :max_center_x_constraint
  attr :right_constraint
  attr :min_right_constraint
  attr :max_right_constraint
  attr :trailing_constraint
  attr :min_trailing_constraint
  attr :max_trailing_constraint
  attr :top_constraint
  attr :min_top_constraint
  attr :max_top_constraint
  attr :center_y_constraint
  attr :min_center_y_constraint
  attr :max_center_y_constraint
  attr :bottom_constraint
  attr :min_bottom_constraint
  attr :max_bottom_constraint
  attr :baseline_constraint
  attr :min_baseline_constraint
  attr :max_baseline_constraint
  attr :width_constraint
  attr :min_width_constraint
  attr :max_width_constraint
  attr :height_constraint
  attr :min_height_constraint
  attr :max_height_constraint
  attr :last_baseline_constraint
  attr :min_last_baseline_constraint
  attr :max_last_baseline_constraint
  attr :first_baseline_constraint
  attr :min_first_baseline_constraint
  attr :max_first_baseline_constraint
  attr :left_margin_constraint
  attr :min_left_margin_constraint
  attr :max_left_margin_constraint
  attr :right_margin_constraint
  attr :min_right_margin_constraint
  attr :max_right_margin_constraint
  attr :top_margin_constraint
  attr :min_top_margin_constraint
  attr :max_top_margin_constraint
  attr :bottom_margin_constraint
  attr :min_bottom_margin_constraint
  attr :max_bottom_margin_constraint
  attr :leading_margin_constraint
  attr :min_leading_margin_constraint
  attr :max_leading_margin_constraint
  attr :trailing_margin_constraint
  attr :min_trailing_margin_constraint
  attr :max_trailing_margin_constraint
  attr :center_x_within_margins_constraint
  attr :min_center_x_within_margins_constraint
  attr :max_center_x_within_margins_constraint
  attr :center_y_within_margins_constraint
  attr :min_center_y_within_margins_constraint
  attr :max_center_y_within_margins_constraint

  attr :size_constraint
  attr :min_size_constraint
  attr :max_size_constraint
  attr :center_constraint
  attr :min_center_constraint
  attr :max_center_constraint
  attr :top_left_constraint
  attr :min_top_left_constraint
  attr :max_top_left_constraint
  attr :top_right_constraint
  attr :min_top_right_constraint
  attr :max_top_right_constraint
  attr :bottom_left_constraint
  attr :min_bottom_left_constraint
  attr :max_bottom_left_constraint
  attr :bottom_right_constraint
  attr :min_bottom_right_constraint
  attr :max_bottom_right_constraint

  attr :above_constraint
  attr :below_constraint
  attr :before_constraint
  attr :after_constraint

  def mk_layout
    @view = add UIView
    @button = add UIButton, :button
  end

  def button_style(btn)
    btn.setTitle('btn', forState: UIControlStateNormal)

    auto_layout do |c|
      @left_constraint = c.left.equals(:superview)
      @min_left_constraint = c.min_left.equals(:superview)
      @max_left_constraint = c.max_left.equals(:superview)
      @leading_constraint = c.leading.equals(:superview)
      @min_leading_constraint = c.min_leading.equals(:superview)
      @max_leading_constraint = c.max_leading.equals(:superview)
      @center_x_constraint = c.center_x.equals(:superview)
      @min_center_x_constraint = c.min_center_x.equals(:superview)
      @max_center_x_constraint = c.max_center_x.equals(:superview)
      @right_constraint = c.right.equals(:superview)
      @min_right_constraint = c.min_right.equals(:superview)
      @max_right_constraint = c.max_right.equals(:superview)
      @trailing_constraint = c.trailing.equals(:superview)
      @min_trailing_constraint = c.min_trailing.equals(:superview)
      @max_trailing_constraint = c.max_trailing.equals(:superview)
      @top_constraint = c.top.equals(:superview)
      @min_top_constraint = c.min_top.equals(:superview)
      @max_top_constraint = c.max_top.equals(:superview)
      @center_y_constraint = c.center_y.equals(:superview)
      @min_center_y_constraint = c.min_center_y.equals(:superview)
      @max_center_y_constraint = c.max_center_y.equals(:superview)
      @bottom_constraint = c.bottom.equals(:superview)
      @min_bottom_constraint = c.min_bottom.equals(:superview)
      @max_bottom_constraint = c.max_bottom.equals(:superview)
      @baseline_constraint = c.baseline.equals(:superview)
      @min_baseline_constraint = c.min_baseline.equals(:superview)
      @max_baseline_constraint = c.max_baseline.equals(:superview)
      @width_constraint = c.width.equals(:superview)
      @min_width_constraint = c.min_width.equals(:superview)
      @max_width_constraint = c.max_width.equals(:superview)
      @height_constraint = c.height.equals(:superview)
      @min_height_constraint = c.min_height.equals(:superview)
      @max_height_constraint = c.max_height.equals(:superview)
      @last_baseline_constraint = c.last_baseline.equals(:superview)
      @min_last_baseline_constraint = c.min_last_baseline.equals(:superview)
      @max_last_baseline_constraint = c.max_last_baseline.equals(:superview)
      @first_baseline_constraint = c.first_baseline.equals(:superview)
      @min_first_baseline_constraint = c.min_first_baseline.equals(:superview)
      @max_first_baseline_constraint = c.max_first_baseline.equals(:superview)
      @left_margin_constraint = c.left_margin.equals(:superview)
      @min_left_margin_constraint = c.min_left_margin.equals(:superview)
      @max_left_margin_constraint = c.max_left_margin.equals(:superview)
      @right_margin_constraint = c.right_margin.equals(:superview)
      @min_right_margin_constraint = c.min_right_margin.equals(:superview)
      @max_right_margin_constraint = c.max_right_margin.equals(:superview)
      @top_margin_constraint = c.top_margin.equals(:superview)
      @min_top_margin_constraint = c.min_top_margin.equals(:superview)
      @max_top_margin_constraint = c.max_top_margin.equals(:superview)
      @bottom_margin_constraint = c.bottom_margin.equals(:superview)
      @min_bottom_margin_constraint = c.min_bottom_margin.equals(:superview)
      @max_bottom_margin_constraint = c.max_bottom_margin.equals(:superview)
      @leading_margin_constraint = c.leading_margin.equals(:superview)
      @min_leading_margin_constraint = c.min_leading_margin.equals(:superview)
      @max_leading_margin_constraint = c.max_leading_margin.equals(:superview)
      @trailing_margin_constraint = c.trailing_margin.equals(:superview)
      @min_trailing_margin_constraint = c.min_trailing_margin.equals(:superview)
      @max_trailing_margin_constraint = c.max_trailing_margin.equals(:superview)
      @center_x_within_margins_constraint = c.center_x_within_margins.equals(:superview)
      @min_center_x_within_margins_constraint = c.min_center_x_within_margins.equals(:superview)
      @max_center_x_within_margins_constraint = c.max_center_x_within_margins.equals(:superview)
      @center_y_within_margins_constraint = c.center_y_within_margins.equals(:superview)
      @min_center_y_within_margins_constraint = c.min_center_y_within_margins.equals(:superview)
      @max_center_y_within_margins_constraint = c.max_center_y_within_margins.equals(:superview)

      @size_constraint = c.size.equals(:superview)
      @min_size_constraint = c.min_size.equals(:superview)
      @max_size_constraint = c.max_size.equals(:superview)
      @center_constraint = c.center.equals(:superview)
      @min_center_constraint = c.min_center.equals(:superview)
      @max_center_constraint = c.max_center.equals(:superview)
      @top_left_constraint = c.top_left.equals(:superview)
      @min_top_left_constraint = c.min_top_left.equals(:superview)
      @max_top_left_constraint = c.max_top_left.equals(:superview)
      @top_right_constraint = c.top_right.equals(:superview)
      @min_top_right_constraint = c.min_top_right.equals(:superview)
      @max_top_right_constraint = c.max_top_right.equals(:superview)
      @bottom_left_constraint = c.bottom_left.equals(:superview)
      @min_bottom_left_constraint = c.min_bottom_left.equals(:superview)
      @max_bottom_left_constraint = c.max_bottom_left.equals(:superview)
      @bottom_right_constraint = c.bottom_right.equals(:superview)
      @min_bottom_right_constraint = c.min_bottom_right.equals(:superview)
      @max_bottom_right_constraint = c.max_bottom_right.equals(:superview)

      @above_constraint = c.above(@view)
      @below_constraint = c.below(@view)
      @before_constraint = c.before(@view)
      @after_constraint = c.after(@view)
    end
  end

end


describe AutoLayoutTestLayout do
  context("Creating a left constraint") do
    before do
      @layout = AutoLayoutTestLayout.new
    end
    context("should have a left_constraint") do
      it("should be a Constraint") do
        @layout.left_constraint.should.be.kind_of(MotionKit::Constraint)
        @layout.min_left_constraint.should.be.kind_of(MotionKit::Constraint)
        @layout.max_left_constraint.should.be.kind_of(MotionKit::Constraint)
      end
      it("should have target set") do
        @layout.left_constraint.target.should == @layout.button
        @layout.min_left_constraint.target.should == @layout.button
        @layout.max_left_constraint.target.should == @layout.button
      end
      it("should have attribute set") do
        @layout.left_constraint.attribute.should == :left
        @layout.min_left_constraint.attribute.should == :left
        @layout.max_left_constraint.attribute.should == :left
      end
      it("should have relationship set") do
        @layout.left_constraint.relationship.should == :equal
        @layout.min_left_constraint.relationship.should == :gte
        @layout.max_left_constraint.relationship.should == :lte
      end
      it("should have relative_to set") do
        @layout.left_constraint.relative_to.should == :superview
        @layout.min_left_constraint.relative_to.should == :superview
        @layout.max_left_constraint.relative_to.should == :superview
      end
      it("should have attribute2 set") do
        @layout.left_constraint.attribute2.should == :left
        @layout.min_left_constraint.attribute2.should == :left
        @layout.max_left_constraint.attribute2.should == :left
      end
      it("should have multiplier set") do
        @layout.left_constraint.multiplier.should == 1
        @layout.min_left_constraint.multiplier.should == 1
        @layout.max_left_constraint.multiplier.should == 1
      end
      it("should have constant set") do
        @layout.left_constraint.constant.should == 0
        @layout.min_left_constraint.constant.should == 0
        @layout.max_left_constraint.constant.should == 0
      end
      it("should be resolvable") do
        constraints = @layout.left_constraint.resolve_all(@layout)
        min_constraints = @layout.min_left_constraint.resolve_all(@layout)
        max_constraints = @layout.max_left_constraint.resolve_all(@layout)
        constraints[0].should.be.kind_of(NSLayoutConstraint)
        constraints[0].firstItem.should == @layout.button
        constraints[0].firstAttribute.should == NSLayoutAttributeLeft
        constraints[0].relation.should == NSLayoutRelationEqual
        constraints[0].secondItem.should == @layout
        constraints[0].secondAttribute.should == NSLayoutAttributeLeft
        constraints[0].multiplier.should == 1
        constraints[0].constant.should == 0
      end
    end

    context("should have a leading_constraint") do
      it("should be a Constraint") do
        @layout.leading_constraint.should.be.kind_of(MotionKit::Constraint)
        @layout.min_leading_constraint.should.be.kind_of(MotionKit::Constraint)
        @layout.max_leading_constraint.should.be.kind_of(MotionKit::Constraint)
      end
      it("should have target set") do
        @layout.leading_constraint.target.should == @layout.button
        @layout.min_leading_constraint.target.should == @layout.button
        @layout.max_leading_constraint.target.should == @layout.button
      end
      it("should have attribute set") do
        @layout.leading_constraint.attribute.should == :leading
        @layout.min_leading_constraint.attribute.should == :leading
        @layout.max_leading_constraint.attribute.should == :leading
      end
      it("should have relationship set") do
        @layout.leading_constraint.relationship.should == :equal
        @layout.min_leading_constraint.relationship.should == :gte
        @layout.max_leading_constraint.relationship.should == :lte
      end
      it("should have relative_to set") do
        @layout.leading_constraint.relative_to.should == :superview
        @layout.min_leading_constraint.relative_to.should == :superview
        @layout.max_leading_constraint.relative_to.should == :superview
      end
      it("should have attribute2 set") do
        @layout.leading_constraint.attribute2.should == :leading
        @layout.min_leading_constraint.attribute2.should == :leading
        @layout.max_leading_constraint.attribute2.should == :leading
      end
      it("should have multiplier set") do
        @layout.leading_constraint.multiplier.should == 1
        @layout.min_leading_constraint.multiplier.should == 1
        @layout.max_leading_constraint.multiplier.should == 1
      end
      it("should have constant set") do
        @layout.leading_constraint.constant.should == 0
        @layout.min_leading_constraint.constant.should == 0
        @layout.max_leading_constraint.constant.should == 0
      end
      it("should be resolvable") do
        constraints = @layout.leading_constraint.resolve_all(@layout)
        min_constraints = @layout.min_leading_constraint.resolve_all(@layout)
        max_constraints = @layout.max_leading_constraint.resolve_all(@layout)
        constraints[0].should.be.kind_of(NSLayoutConstraint)
        constraints[0].firstItem.should == @layout.button
        constraints[0].firstAttribute.should == NSLayoutAttributeLeading
        constraints[0].relation.should == NSLayoutRelationEqual
        constraints[0].secondItem.should == @layout
        constraints[0].secondAttribute.should == NSLayoutAttributeLeading
        constraints[0].multiplier.should == 1
        constraints[0].constant.should == 0
      end
    end

    context("should have a center_x_constraint") do
      it("should be a Constraint") do
        @layout.center_x_constraint.should.be.kind_of(MotionKit::Constraint)
        @layout.min_center_x_constraint.should.be.kind_of(MotionKit::Constraint)
        @layout.max_center_x_constraint.should.be.kind_of(MotionKit::Constraint)
      end
      it("should have target set") do
        @layout.center_x_constraint.target.should == @layout.button
        @layout.min_center_x_constraint.target.should == @layout.button
        @layout.max_center_x_constraint.target.should == @layout.button
      end
      it("should have attribute set") do
        @layout.center_x_constraint.attribute.should == :center_x
        @layout.min_center_x_constraint.attribute.should == :center_x
        @layout.max_center_x_constraint.attribute.should == :center_x
      end
      it("should have relationship set") do
        @layout.center_x_constraint.relationship.should == :equal
        @layout.min_center_x_constraint.relationship.should == :gte
        @layout.max_center_x_constraint.relationship.should == :lte
      end
      it("should have relative_to set") do
        @layout.center_x_constraint.relative_to.should == :superview
        @layout.min_center_x_constraint.relative_to.should == :superview
        @layout.max_center_x_constraint.relative_to.should == :superview
      end
      it("should have attribute2 set") do
        @layout.center_x_constraint.attribute2.should == :center_x
        @layout.min_center_x_constraint.attribute2.should == :center_x
        @layout.max_center_x_constraint.attribute2.should == :center_x
      end
      it("should have multiplier set") do
        @layout.center_x_constraint.multiplier.should == 1
        @layout.min_center_x_constraint.multiplier.should == 1
        @layout.max_center_x_constraint.multiplier.should == 1
      end
      it("should have constant set") do
        @layout.center_x_constraint.constant.should == 0
        @layout.min_center_x_constraint.constant.should == 0
        @layout.max_center_x_constraint.constant.should == 0
      end
      it("should be resolvable") do
        constraints = @layout.center_x_constraint.resolve_all(@layout)
        min_constraints = @layout.min_center_x_constraint.resolve_all(@layout)
        max_constraints = @layout.max_center_x_constraint.resolve_all(@layout)
        constraints[0].should.be.kind_of(NSLayoutConstraint)
        constraints[0].firstItem.should == @layout.button
        constraints[0].firstAttribute.should == NSLayoutAttributeCenterX
        constraints[0].relation.should == NSLayoutRelationEqual
        constraints[0].secondItem.should == @layout
        constraints[0].secondAttribute.should == NSLayoutAttributeCenterX
        constraints[0].multiplier.should == 1
        constraints[0].constant.should == 0
      end
    end

    context("should have a right_constraint") do
      it("should be a Constraint") do
        @layout.right_constraint.should.be.kind_of(MotionKit::Constraint)
        @layout.min_right_constraint.should.be.kind_of(MotionKit::Constraint)
        @layout.max_right_constraint.should.be.kind_of(MotionKit::Constraint)
      end
      it("should have target set") do
        @layout.right_constraint.target.should == @layout.button
        @layout.min_right_constraint.target.should == @layout.button
        @layout.max_right_constraint.target.should == @layout.button
      end
      it("should have attribute set") do
        @layout.right_constraint.attribute.should == :right
        @layout.min_right_constraint.attribute.should == :right
        @layout.max_right_constraint.attribute.should == :right
      end
      it("should have relationship set") do
        @layout.right_constraint.relationship.should == :equal
        @layout.min_right_constraint.relationship.should == :gte
        @layout.max_right_constraint.relationship.should == :lte
      end
      it("should have relative_to set") do
        @layout.right_constraint.relative_to.should == :superview
        @layout.min_right_constraint.relative_to.should == :superview
        @layout.max_right_constraint.relative_to.should == :superview
      end
      it("should have attribute2 set") do
        @layout.right_constraint.attribute2.should == :right
        @layout.min_right_constraint.attribute2.should == :right
        @layout.max_right_constraint.attribute2.should == :right
      end
      it("should have multiplier set") do
        @layout.right_constraint.multiplier.should == 1
        @layout.min_right_constraint.multiplier.should == 1
        @layout.max_right_constraint.multiplier.should == 1
      end
      it("should have constant set") do
        @layout.right_constraint.constant.should == 0
        @layout.min_right_constraint.constant.should == 0
        @layout.max_right_constraint.constant.should == 0
      end
      it("should be resolvable") do
        constraints = @layout.right_constraint.resolve_all(@layout)
        min_constraints = @layout.min_right_constraint.resolve_all(@layout)
        max_constraints = @layout.max_right_constraint.resolve_all(@layout)
        constraints[0].should.be.kind_of(NSLayoutConstraint)
        constraints[0].firstItem.should == @layout.button
        constraints[0].firstAttribute.should == NSLayoutAttributeRight
        constraints[0].relation.should == NSLayoutRelationEqual
        constraints[0].secondItem.should == @layout
        constraints[0].secondAttribute.should == NSLayoutAttributeRight
        constraints[0].multiplier.should == 1
        constraints[0].constant.should == 0
      end
    end

    context("should have a trailing_constraint") do
      it("should be a Constraint") do
        @layout.trailing_constraint.should.be.kind_of(MotionKit::Constraint)
        @layout.min_trailing_constraint.should.be.kind_of(MotionKit::Constraint)
        @layout.max_trailing_constraint.should.be.kind_of(MotionKit::Constraint)
      end
      it("should have target set") do
        @layout.trailing_constraint.target.should == @layout.button
        @layout.min_trailing_constraint.target.should == @layout.button
        @layout.max_trailing_constraint.target.should == @layout.button
      end
      it("should have attribute set") do
        @layout.trailing_constraint.attribute.should == :trailing
        @layout.min_trailing_constraint.attribute.should == :trailing
        @layout.max_trailing_constraint.attribute.should == :trailing
      end
      it("should have relationship set") do
        @layout.trailing_constraint.relationship.should == :equal
        @layout.min_trailing_constraint.relationship.should == :gte
        @layout.max_trailing_constraint.relationship.should == :lte
      end
      it("should have relative_to set") do
        @layout.trailing_constraint.relative_to.should == :superview
        @layout.min_trailing_constraint.relative_to.should == :superview
        @layout.max_trailing_constraint.relative_to.should == :superview
      end
      it("should have attribute2 set") do
        @layout.trailing_constraint.attribute2.should == :trailing
        @layout.min_trailing_constraint.attribute2.should == :trailing
        @layout.max_trailing_constraint.attribute2.should == :trailing
      end
      it("should have multiplier set") do
        @layout.trailing_constraint.multiplier.should == 1
        @layout.min_trailing_constraint.multiplier.should == 1
        @layout.max_trailing_constraint.multiplier.should == 1
      end
      it("should have constant set") do
        @layout.trailing_constraint.constant.should == 0
        @layout.min_trailing_constraint.constant.should == 0
        @layout.max_trailing_constraint.constant.should == 0
      end
      it("should be resolvable") do
        constraints = @layout.trailing_constraint.resolve_all(@layout)
        min_constraints = @layout.min_trailing_constraint.resolve_all(@layout)
        max_constraints = @layout.max_trailing_constraint.resolve_all(@layout)
        constraints[0].should.be.kind_of(NSLayoutConstraint)
        constraints[0].firstItem.should == @layout.button
        constraints[0].firstAttribute.should == NSLayoutAttributeTrailing
        constraints[0].relation.should == NSLayoutRelationEqual
        constraints[0].secondItem.should == @layout
        constraints[0].secondAttribute.should == NSLayoutAttributeTrailing
        constraints[0].multiplier.should == 1
        constraints[0].constant.should == 0
      end
    end

    context("should have a top_constraint") do
      it("should be a Constraint") do
        @layout.top_constraint.should.be.kind_of(MotionKit::Constraint)
        @layout.min_top_constraint.should.be.kind_of(MotionKit::Constraint)
        @layout.max_top_constraint.should.be.kind_of(MotionKit::Constraint)
      end
      it("should have target set") do
        @layout.top_constraint.target.should == @layout.button
        @layout.min_top_constraint.target.should == @layout.button
        @layout.max_top_constraint.target.should == @layout.button
      end
      it("should have attribute set") do
        @layout.top_constraint.attribute.should == :top
        @layout.min_top_constraint.attribute.should == :top
        @layout.max_top_constraint.attribute.should == :top
      end
      it("should have relationship set") do
        @layout.top_constraint.relationship.should == :equal
        @layout.min_top_constraint.relationship.should == :gte
        @layout.max_top_constraint.relationship.should == :lte
      end
      it("should have relative_to set") do
        @layout.top_constraint.relative_to.should == :superview
        @layout.min_top_constraint.relative_to.should == :superview
        @layout.max_top_constraint.relative_to.should == :superview
      end
      it("should have attribute2 set") do
        @layout.top_constraint.attribute2.should == :top
        @layout.min_top_constraint.attribute2.should == :top
        @layout.max_top_constraint.attribute2.should == :top
      end
      it("should have multiplier set") do
        @layout.top_constraint.multiplier.should == 1
        @layout.min_top_constraint.multiplier.should == 1
        @layout.max_top_constraint.multiplier.should == 1
      end
      it("should have constant set") do
        @layout.top_constraint.constant.should == 0
        @layout.min_top_constraint.constant.should == 0
        @layout.max_top_constraint.constant.should == 0
      end
      it("should be resolvable") do
        constraints = @layout.top_constraint.resolve_all(@layout)
        min_constraints = @layout.min_top_constraint.resolve_all(@layout)
        max_constraints = @layout.max_top_constraint.resolve_all(@layout)
        constraints[0].should.be.kind_of(NSLayoutConstraint)
        constraints[0].firstItem.should == @layout.button
        constraints[0].firstAttribute.should == NSLayoutAttributeTop
        constraints[0].relation.should == NSLayoutRelationEqual
        constraints[0].secondItem.should == @layout
        constraints[0].secondAttribute.should == NSLayoutAttributeTop
        constraints[0].multiplier.should == 1
        constraints[0].constant.should == 0
      end
    end

    context("should have a center_y_constraint") do
      it("should be a Constraint") do
        @layout.center_y_constraint.should.be.kind_of(MotionKit::Constraint)
        @layout.min_center_y_constraint.should.be.kind_of(MotionKit::Constraint)
        @layout.max_center_y_constraint.should.be.kind_of(MotionKit::Constraint)
      end
      it("should have target set") do
        @layout.center_y_constraint.target.should == @layout.button
        @layout.min_center_y_constraint.target.should == @layout.button
        @layout.max_center_y_constraint.target.should == @layout.button
      end
      it("should have attribute set") do
        @layout.center_y_constraint.attribute.should == :center_y
        @layout.min_center_y_constraint.attribute.should == :center_y
        @layout.max_center_y_constraint.attribute.should == :center_y
      end
      it("should have relationship set") do
        @layout.center_y_constraint.relationship.should == :equal
        @layout.min_center_y_constraint.relationship.should == :gte
        @layout.max_center_y_constraint.relationship.should == :lte
      end
      it("should have relative_to set") do
        @layout.center_y_constraint.relative_to.should == :superview
        @layout.min_center_y_constraint.relative_to.should == :superview
        @layout.max_center_y_constraint.relative_to.should == :superview
      end
      it("should have attribute2 set") do
        @layout.center_y_constraint.attribute2.should == :center_y
        @layout.min_center_y_constraint.attribute2.should == :center_y
        @layout.max_center_y_constraint.attribute2.should == :center_y
      end
      it("should have multiplier set") do
        @layout.center_y_constraint.multiplier.should == 1
        @layout.min_center_y_constraint.multiplier.should == 1
        @layout.max_center_y_constraint.multiplier.should == 1
      end
      it("should have constant set") do
        @layout.center_y_constraint.constant.should == 0
        @layout.min_center_y_constraint.constant.should == 0
        @layout.max_center_y_constraint.constant.should == 0
      end
      it("should be resolvable") do
        constraints = @layout.center_y_constraint.resolve_all(@layout)
        min_constraints = @layout.min_center_y_constraint.resolve_all(@layout)
        max_constraints = @layout.max_center_y_constraint.resolve_all(@layout)
        constraints[0].should.be.kind_of(NSLayoutConstraint)
        constraints[0].firstItem.should == @layout.button
        constraints[0].firstAttribute.should == NSLayoutAttributeCenterY
        constraints[0].relation.should == NSLayoutRelationEqual
        constraints[0].secondItem.should == @layout
        constraints[0].secondAttribute.should == NSLayoutAttributeCenterY
        constraints[0].multiplier.should == 1
        constraints[0].constant.should == 0
      end
    end

    context("should have a bottom_constraint") do
      it("should be a Constraint") do
        @layout.bottom_constraint.should.be.kind_of(MotionKit::Constraint)
        @layout.min_bottom_constraint.should.be.kind_of(MotionKit::Constraint)
        @layout.max_bottom_constraint.should.be.kind_of(MotionKit::Constraint)
      end
      it("should have target set") do
        @layout.bottom_constraint.target.should == @layout.button
        @layout.min_bottom_constraint.target.should == @layout.button
        @layout.max_bottom_constraint.target.should == @layout.button
      end
      it("should have attribute set") do
        @layout.bottom_constraint.attribute.should == :bottom
        @layout.min_bottom_constraint.attribute.should == :bottom
        @layout.max_bottom_constraint.attribute.should == :bottom
      end
      it("should have relationship set") do
        @layout.bottom_constraint.relationship.should == :equal
        @layout.min_bottom_constraint.relationship.should == :gte
        @layout.max_bottom_constraint.relationship.should == :lte
      end
      it("should have relative_to set") do
        @layout.bottom_constraint.relative_to.should == :superview
        @layout.min_bottom_constraint.relative_to.should == :superview
        @layout.max_bottom_constraint.relative_to.should == :superview
      end
      it("should have attribute2 set") do
        @layout.bottom_constraint.attribute2.should == :bottom
        @layout.min_bottom_constraint.attribute2.should == :bottom
        @layout.max_bottom_constraint.attribute2.should == :bottom
      end
      it("should have multiplier set") do
        @layout.bottom_constraint.multiplier.should == 1
        @layout.min_bottom_constraint.multiplier.should == 1
        @layout.max_bottom_constraint.multiplier.should == 1
      end
      it("should have constant set") do
        @layout.bottom_constraint.constant.should == 0
        @layout.min_bottom_constraint.constant.should == 0
        @layout.max_bottom_constraint.constant.should == 0
      end
      it("should be resolvable") do
        constraints = @layout.bottom_constraint.resolve_all(@layout)
        min_constraints = @layout.min_bottom_constraint.resolve_all(@layout)
        max_constraints = @layout.max_bottom_constraint.resolve_all(@layout)
        constraints[0].should.be.kind_of(NSLayoutConstraint)
        constraints[0].firstItem.should == @layout.button
        constraints[0].firstAttribute.should == NSLayoutAttributeBottom
        constraints[0].relation.should == NSLayoutRelationEqual
        constraints[0].secondItem.should == @layout
        constraints[0].secondAttribute.should == NSLayoutAttributeBottom
        constraints[0].multiplier.should == 1
        constraints[0].constant.should == 0
      end
    end

    context("should have a baseline_constraint") do
      it("should be a Constraint") do
        @layout.baseline_constraint.should.be.kind_of(MotionKit::Constraint)
        @layout.min_baseline_constraint.should.be.kind_of(MotionKit::Constraint)
        @layout.max_baseline_constraint.should.be.kind_of(MotionKit::Constraint)
      end
      it("should have target set") do
        @layout.baseline_constraint.target.should == @layout.button
        @layout.min_baseline_constraint.target.should == @layout.button
        @layout.max_baseline_constraint.target.should == @layout.button
      end
      it("should have attribute set") do
        @layout.baseline_constraint.attribute.should == :baseline
        @layout.min_baseline_constraint.attribute.should == :baseline
        @layout.max_baseline_constraint.attribute.should == :baseline
      end
      it("should have relationship set") do
        @layout.baseline_constraint.relationship.should == :equal
        @layout.min_baseline_constraint.relationship.should == :gte
        @layout.max_baseline_constraint.relationship.should == :lte
      end
      it("should have relative_to set") do
        @layout.baseline_constraint.relative_to.should == :superview
        @layout.min_baseline_constraint.relative_to.should == :superview
        @layout.max_baseline_constraint.relative_to.should == :superview
      end
      it("should have attribute2 set") do
        @layout.baseline_constraint.attribute2.should == :baseline
        @layout.min_baseline_constraint.attribute2.should == :baseline
        @layout.max_baseline_constraint.attribute2.should == :baseline
      end
      it("should have multiplier set") do
        @layout.baseline_constraint.multiplier.should == 1
        @layout.min_baseline_constraint.multiplier.should == 1
        @layout.max_baseline_constraint.multiplier.should == 1
      end
      it("should have constant set") do
        @layout.baseline_constraint.constant.should == 0
        @layout.min_baseline_constraint.constant.should == 0
        @layout.max_baseline_constraint.constant.should == 0
      end
      it("should be resolvable") do
        constraints = @layout.baseline_constraint.resolve_all(@layout)
        min_constraints = @layout.min_baseline_constraint.resolve_all(@layout)
        max_constraints = @layout.max_baseline_constraint.resolve_all(@layout)
        constraints[0].should.be.kind_of(NSLayoutConstraint)
        constraints[0].firstItem.should == @layout.button
        constraints[0].firstAttribute.should == NSLayoutAttributeBaseline
        constraints[0].relation.should == NSLayoutRelationEqual
        constraints[0].secondItem.should == @layout
        constraints[0].secondAttribute.should == NSLayoutAttributeBaseline
        constraints[0].multiplier.should == 1
        constraints[0].constant.should == 0
      end
    end

    context("should have a width_constraint") do
      it("should be a Constraint") do
        @layout.width_constraint.should.be.kind_of(MotionKit::Constraint)
        @layout.min_width_constraint.should.be.kind_of(MotionKit::Constraint)
        @layout.max_width_constraint.should.be.kind_of(MotionKit::Constraint)
      end
      it("should have target set") do
        @layout.width_constraint.target.should == @layout.button
        @layout.min_width_constraint.target.should == @layout.button
        @layout.max_width_constraint.target.should == @layout.button
      end
      it("should have attribute set") do
        @layout.width_constraint.attribute.should == :width
        @layout.min_width_constraint.attribute.should == :width
        @layout.max_width_constraint.attribute.should == :width
      end
      it("should have relationship set") do
        @layout.width_constraint.relationship.should == :equal
        @layout.min_width_constraint.relationship.should == :gte
        @layout.max_width_constraint.relationship.should == :lte
      end
      it("should have relative_to set") do
        @layout.width_constraint.relative_to.should == :superview
        @layout.min_width_constraint.relative_to.should == :superview
        @layout.max_width_constraint.relative_to.should == :superview
      end
      it("should have attribute2 set") do
        @layout.width_constraint.attribute2.should == :width
        @layout.min_width_constraint.attribute2.should == :width
        @layout.max_width_constraint.attribute2.should == :width
      end
      it("should have multiplier set") do
        @layout.width_constraint.multiplier.should == 1
        @layout.min_width_constraint.multiplier.should == 1
        @layout.max_width_constraint.multiplier.should == 1
      end
      it("should have constant set") do
        @layout.width_constraint.constant.should == 0
        @layout.min_width_constraint.constant.should == 0
        @layout.max_width_constraint.constant.should == 0
      end
      it("should be resolvable") do
        constraints = @layout.width_constraint.resolve_all(@layout)
        min_constraints = @layout.min_width_constraint.resolve_all(@layout)
        max_constraints = @layout.max_width_constraint.resolve_all(@layout)
        constraints[0].should.be.kind_of(NSLayoutConstraint)
        constraints[0].firstItem.should == @layout.button
        constraints[0].firstAttribute.should == NSLayoutAttributeWidth
        constraints[0].relation.should == NSLayoutRelationEqual
        constraints[0].secondItem.should == @layout
        constraints[0].secondAttribute.should == NSLayoutAttributeWidth
        constraints[0].multiplier.should == 1
        constraints[0].constant.should == 0
      end
    end

    context("should have a height_constraint") do
      it("should be a Constraint") do
        @layout.height_constraint.should.be.kind_of(MotionKit::Constraint)
        @layout.min_height_constraint.should.be.kind_of(MotionKit::Constraint)
        @layout.max_height_constraint.should.be.kind_of(MotionKit::Constraint)
      end
      it("should have target set") do
        @layout.height_constraint.target.should == @layout.button
        @layout.min_height_constraint.target.should == @layout.button
        @layout.max_height_constraint.target.should == @layout.button
      end
      it("should have attribute set") do
        @layout.height_constraint.attribute.should == :height
        @layout.min_height_constraint.attribute.should == :height
        @layout.max_height_constraint.attribute.should == :height
      end
      it("should have relationship set") do
        @layout.height_constraint.relationship.should == :equal
        @layout.min_height_constraint.relationship.should == :gte
        @layout.max_height_constraint.relationship.should == :lte
      end
      it("should have relative_to set") do
        @layout.height_constraint.relative_to.should == :superview
        @layout.min_height_constraint.relative_to.should == :superview
        @layout.max_height_constraint.relative_to.should == :superview
      end
      it("should have attribute2 set") do
        @layout.height_constraint.attribute2.should == :height
        @layout.min_height_constraint.attribute2.should == :height
        @layout.max_height_constraint.attribute2.should == :height
      end
      it("should have multiplier set") do
        @layout.height_constraint.multiplier.should == 1
        @layout.min_height_constraint.multiplier.should == 1
        @layout.max_height_constraint.multiplier.should == 1
      end
      it("should have constant set") do
        @layout.height_constraint.constant.should == 0
        @layout.min_height_constraint.constant.should == 0
        @layout.max_height_constraint.constant.should == 0
      end
      it("should be resolvable") do
        constraints = @layout.height_constraint.resolve_all(@layout)
        min_constraints = @layout.min_height_constraint.resolve_all(@layout)
        max_constraints = @layout.max_height_constraint.resolve_all(@layout)
        constraints[0].should.be.kind_of(NSLayoutConstraint)
        constraints[0].firstItem.should == @layout.button
        constraints[0].firstAttribute.should == NSLayoutAttributeHeight
        constraints[0].relation.should == NSLayoutRelationEqual
        constraints[0].secondItem.should == @layout
        constraints[0].secondAttribute.should == NSLayoutAttributeHeight
        constraints[0].multiplier.should == 1
        constraints[0].constant.should == 0
      end
    end

    context("should have a last_baseline_constraint") do
      it("should be a Constraint") do
        @layout.last_baseline_constraint.should.be.kind_of(MotionKit::Constraint)
        @layout.min_last_baseline_constraint.should.be.kind_of(MotionKit::Constraint)
        @layout.max_last_baseline_constraint.should.be.kind_of(MotionKit::Constraint)
      end
      it("should have target set") do
        @layout.last_baseline_constraint.target.should == @layout.button
        @layout.min_last_baseline_constraint.target.should == @layout.button
        @layout.max_last_baseline_constraint.target.should == @layout.button
      end
      it("should have attribute set") do
        @layout.last_baseline_constraint.attribute.should == :last_baseline
        @layout.min_last_baseline_constraint.attribute.should == :last_baseline
        @layout.max_last_baseline_constraint.attribute.should == :last_baseline
      end
      it("should have relationship set") do
        @layout.last_baseline_constraint.relationship.should == :equal
        @layout.min_last_baseline_constraint.relationship.should == :gte
        @layout.max_last_baseline_constraint.relationship.should == :lte
      end
      it("should have relative_to set") do
        @layout.last_baseline_constraint.relative_to.should == :superview
        @layout.min_last_baseline_constraint.relative_to.should == :superview
        @layout.max_last_baseline_constraint.relative_to.should == :superview
      end
      it("should have attribute2 set") do
        @layout.last_baseline_constraint.attribute2.should == :last_baseline
        @layout.min_last_baseline_constraint.attribute2.should == :last_baseline
        @layout.max_last_baseline_constraint.attribute2.should == :last_baseline
      end
      it("should have multiplier set") do
        @layout.last_baseline_constraint.multiplier.should == 1
        @layout.min_last_baseline_constraint.multiplier.should == 1
        @layout.max_last_baseline_constraint.multiplier.should == 1
      end
      it("should have constant set") do
        @layout.last_baseline_constraint.constant.should == 0
        @layout.min_last_baseline_constraint.constant.should == 0
        @layout.max_last_baseline_constraint.constant.should == 0
      end
      it("should be resolvable") do
        constraints = @layout.last_baseline_constraint.resolve_all(@layout)
        min_constraints = @layout.min_last_baseline_constraint.resolve_all(@layout)
        max_constraints = @layout.max_last_baseline_constraint.resolve_all(@layout)
        constraints[0].should.be.kind_of(NSLayoutConstraint)
        constraints[0].firstItem.should == @layout.button
        constraints[0].firstAttribute.should == NSLayoutAttributeLastBaseline
        constraints[0].relation.should == NSLayoutRelationEqual
        constraints[0].secondItem.should == @layout
        constraints[0].secondAttribute.should == NSLayoutAttributeLastBaseline
        constraints[0].multiplier.should == 1
        constraints[0].constant.should == 0
      end
    end

    context("should have a first_baseline_constraint") do
      it("should be a Constraint") do
        @layout.first_baseline_constraint.should.be.kind_of(MotionKit::Constraint)
        @layout.min_first_baseline_constraint.should.be.kind_of(MotionKit::Constraint)
        @layout.max_first_baseline_constraint.should.be.kind_of(MotionKit::Constraint)
      end
      it("should have target set") do
        @layout.first_baseline_constraint.target.should == @layout.button
        @layout.min_first_baseline_constraint.target.should == @layout.button
        @layout.max_first_baseline_constraint.target.should == @layout.button
      end
      it("should have attribute set") do
        @layout.first_baseline_constraint.attribute.should == :first_baseline
        @layout.min_first_baseline_constraint.attribute.should == :first_baseline
        @layout.max_first_baseline_constraint.attribute.should == :first_baseline
      end
      it("should have relationship set") do
        @layout.first_baseline_constraint.relationship.should == :equal
        @layout.min_first_baseline_constraint.relationship.should == :gte
        @layout.max_first_baseline_constraint.relationship.should == :lte
      end
      it("should have relative_to set") do
        @layout.first_baseline_constraint.relative_to.should == :superview
        @layout.min_first_baseline_constraint.relative_to.should == :superview
        @layout.max_first_baseline_constraint.relative_to.should == :superview
      end
      it("should have attribute2 set") do
        @layout.first_baseline_constraint.attribute2.should == :first_baseline
        @layout.min_first_baseline_constraint.attribute2.should == :first_baseline
        @layout.max_first_baseline_constraint.attribute2.should == :first_baseline
      end
      it("should have multiplier set") do
        @layout.first_baseline_constraint.multiplier.should == 1
        @layout.min_first_baseline_constraint.multiplier.should == 1
        @layout.max_first_baseline_constraint.multiplier.should == 1
      end
      it("should have constant set") do
        @layout.first_baseline_constraint.constant.should == 0
        @layout.min_first_baseline_constraint.constant.should == 0
        @layout.max_first_baseline_constraint.constant.should == 0
      end
      it("should be resolvable") do
        constraints = @layout.first_baseline_constraint.resolve_all(@layout)
        min_constraints = @layout.min_first_baseline_constraint.resolve_all(@layout)
        max_constraints = @layout.max_first_baseline_constraint.resolve_all(@layout)
        constraints[0].should.be.kind_of(NSLayoutConstraint)
        constraints[0].firstItem.should == @layout.button
        constraints[0].firstAttribute.should == NSLayoutAttributeFirstBaseline
        constraints[0].relation.should == NSLayoutRelationEqual
        constraints[0].secondItem.should == @layout
        constraints[0].secondAttribute.should == NSLayoutAttributeFirstBaseline
        constraints[0].multiplier.should == 1
        constraints[0].constant.should == 0
      end
    end

    context("should have a left_margin_constraint") do
      it("should be a Constraint") do
        @layout.left_margin_constraint.should.be.kind_of(MotionKit::Constraint)
        @layout.min_left_margin_constraint.should.be.kind_of(MotionKit::Constraint)
        @layout.max_left_margin_constraint.should.be.kind_of(MotionKit::Constraint)
      end
      it("should have target set") do
        @layout.left_margin_constraint.target.should == @layout.button
        @layout.min_left_margin_constraint.target.should == @layout.button
        @layout.max_left_margin_constraint.target.should == @layout.button
      end
      it("should have attribute set") do
        @layout.left_margin_constraint.attribute.should == :left_margin
        @layout.min_left_margin_constraint.attribute.should == :left_margin
        @layout.max_left_margin_constraint.attribute.should == :left_margin
      end
      it("should have relationship set") do
        @layout.left_margin_constraint.relationship.should == :equal
        @layout.min_left_margin_constraint.relationship.should == :gte
        @layout.max_left_margin_constraint.relationship.should == :lte
      end
      it("should have relative_to set") do
        @layout.left_margin_constraint.relative_to.should == :superview
        @layout.min_left_margin_constraint.relative_to.should == :superview
        @layout.max_left_margin_constraint.relative_to.should == :superview
      end
      it("should have attribute2 set") do
        @layout.left_margin_constraint.attribute2.should == :left_margin
        @layout.min_left_margin_constraint.attribute2.should == :left_margin
        @layout.max_left_margin_constraint.attribute2.should == :left_margin
      end
      it("should have multiplier set") do
        @layout.left_margin_constraint.multiplier.should == 1
        @layout.min_left_margin_constraint.multiplier.should == 1
        @layout.max_left_margin_constraint.multiplier.should == 1
      end
      it("should have constant set") do
        @layout.left_margin_constraint.constant.should == 0
        @layout.min_left_margin_constraint.constant.should == 0
        @layout.max_left_margin_constraint.constant.should == 0
      end
      it("should be resolvable") do
        constraints = @layout.left_margin_constraint.resolve_all(@layout)
        min_constraints = @layout.min_left_margin_constraint.resolve_all(@layout)
        max_constraints = @layout.max_left_margin_constraint.resolve_all(@layout)
        constraints[0].should.be.kind_of(NSLayoutConstraint)
        constraints[0].firstItem.should == @layout.button
        constraints[0].firstAttribute.should == NSLayoutAttributeLeftMargin
        constraints[0].relation.should == NSLayoutRelationEqual
        constraints[0].secondItem.should == @layout
        constraints[0].secondAttribute.should == NSLayoutAttributeLeftMargin
        constraints[0].multiplier.should == 1
        constraints[0].constant.should == 0
      end
    end

    context("should have a right_margin_constraint") do
      it("should be a Constraint") do
        @layout.right_margin_constraint.should.be.kind_of(MotionKit::Constraint)
        @layout.min_right_margin_constraint.should.be.kind_of(MotionKit::Constraint)
        @layout.max_right_margin_constraint.should.be.kind_of(MotionKit::Constraint)
      end
      it("should have target set") do
        @layout.right_margin_constraint.target.should == @layout.button
        @layout.min_right_margin_constraint.target.should == @layout.button
        @layout.max_right_margin_constraint.target.should == @layout.button
      end
      it("should have attribute set") do
        @layout.right_margin_constraint.attribute.should == :right_margin
        @layout.min_right_margin_constraint.attribute.should == :right_margin
        @layout.max_right_margin_constraint.attribute.should == :right_margin
      end
      it("should have relationship set") do
        @layout.right_margin_constraint.relationship.should == :equal
        @layout.min_right_margin_constraint.relationship.should == :gte
        @layout.max_right_margin_constraint.relationship.should == :lte
      end
      it("should have relative_to set") do
        @layout.right_margin_constraint.relative_to.should == :superview
        @layout.min_right_margin_constraint.relative_to.should == :superview
        @layout.max_right_margin_constraint.relative_to.should == :superview
      end
      it("should have attribute2 set") do
        @layout.right_margin_constraint.attribute2.should == :right_margin
        @layout.min_right_margin_constraint.attribute2.should == :right_margin
        @layout.max_right_margin_constraint.attribute2.should == :right_margin
      end
      it("should have multiplier set") do
        @layout.right_margin_constraint.multiplier.should == 1
        @layout.min_right_margin_constraint.multiplier.should == 1
        @layout.max_right_margin_constraint.multiplier.should == 1
      end
      it("should have constant set") do
        @layout.right_margin_constraint.constant.should == 0
        @layout.min_right_margin_constraint.constant.should == 0
        @layout.max_right_margin_constraint.constant.should == 0
      end
      it("should be resolvable") do
        constraints = @layout.right_margin_constraint.resolve_all(@layout)
        min_constraints = @layout.min_right_margin_constraint.resolve_all(@layout)
        max_constraints = @layout.max_right_margin_constraint.resolve_all(@layout)
        constraints[0].should.be.kind_of(NSLayoutConstraint)
        constraints[0].firstItem.should == @layout.button
        constraints[0].firstAttribute.should == NSLayoutAttributeRightMargin
        constraints[0].relation.should == NSLayoutRelationEqual
        constraints[0].secondItem.should == @layout
        constraints[0].secondAttribute.should == NSLayoutAttributeRightMargin
        constraints[0].multiplier.should == 1
        constraints[0].constant.should == 0
      end
    end

    context("should have a top_margin_constraint") do
      it("should be a Constraint") do
        @layout.top_margin_constraint.should.be.kind_of(MotionKit::Constraint)
        @layout.min_top_margin_constraint.should.be.kind_of(MotionKit::Constraint)
        @layout.max_top_margin_constraint.should.be.kind_of(MotionKit::Constraint)
      end
      it("should have target set") do
        @layout.top_margin_constraint.target.should == @layout.button
        @layout.min_top_margin_constraint.target.should == @layout.button
        @layout.max_top_margin_constraint.target.should == @layout.button
      end
      it("should have attribute set") do
        @layout.top_margin_constraint.attribute.should == :top_margin
        @layout.min_top_margin_constraint.attribute.should == :top_margin
        @layout.max_top_margin_constraint.attribute.should == :top_margin
      end
      it("should have relationship set") do
        @layout.top_margin_constraint.relationship.should == :equal
        @layout.min_top_margin_constraint.relationship.should == :gte
        @layout.max_top_margin_constraint.relationship.should == :lte
      end
      it("should have relative_to set") do
        @layout.top_margin_constraint.relative_to.should == :superview
        @layout.min_top_margin_constraint.relative_to.should == :superview
        @layout.max_top_margin_constraint.relative_to.should == :superview
      end
      it("should have attribute2 set") do
        @layout.top_margin_constraint.attribute2.should == :top_margin
        @layout.min_top_margin_constraint.attribute2.should == :top_margin
        @layout.max_top_margin_constraint.attribute2.should == :top_margin
      end
      it("should have multiplier set") do
        @layout.top_margin_constraint.multiplier.should == 1
        @layout.min_top_margin_constraint.multiplier.should == 1
        @layout.max_top_margin_constraint.multiplier.should == 1
      end
      it("should have constant set") do
        @layout.top_margin_constraint.constant.should == 0
        @layout.min_top_margin_constraint.constant.should == 0
        @layout.max_top_margin_constraint.constant.should == 0
      end
      it("should be resolvable") do
        constraints = @layout.top_margin_constraint.resolve_all(@layout)
        min_constraints = @layout.min_top_margin_constraint.resolve_all(@layout)
        max_constraints = @layout.max_top_margin_constraint.resolve_all(@layout)
        constraints[0].should.be.kind_of(NSLayoutConstraint)
        constraints[0].firstItem.should == @layout.button
        constraints[0].firstAttribute.should == NSLayoutAttributeTopMargin
        constraints[0].relation.should == NSLayoutRelationEqual
        constraints[0].secondItem.should == @layout
        constraints[0].secondAttribute.should == NSLayoutAttributeTopMargin
        constraints[0].multiplier.should == 1
        constraints[0].constant.should == 0
      end
    end

    context("should have a bottom_margin_constraint") do
      it("should be a Constraint") do
        @layout.bottom_margin_constraint.should.be.kind_of(MotionKit::Constraint)
        @layout.min_bottom_margin_constraint.should.be.kind_of(MotionKit::Constraint)
        @layout.max_bottom_margin_constraint.should.be.kind_of(MotionKit::Constraint)
      end
      it("should have target set") do
        @layout.bottom_margin_constraint.target.should == @layout.button
        @layout.min_bottom_margin_constraint.target.should == @layout.button
        @layout.max_bottom_margin_constraint.target.should == @layout.button
      end
      it("should have attribute set") do
        @layout.bottom_margin_constraint.attribute.should == :bottom_margin
        @layout.min_bottom_margin_constraint.attribute.should == :bottom_margin
        @layout.max_bottom_margin_constraint.attribute.should == :bottom_margin
      end
      it("should have relationship set") do
        @layout.bottom_margin_constraint.relationship.should == :equal
        @layout.min_bottom_margin_constraint.relationship.should == :gte
        @layout.max_bottom_margin_constraint.relationship.should == :lte
      end
      it("should have relative_to set") do
        @layout.bottom_margin_constraint.relative_to.should == :superview
        @layout.min_bottom_margin_constraint.relative_to.should == :superview
        @layout.max_bottom_margin_constraint.relative_to.should == :superview
      end
      it("should have attribute2 set") do
        @layout.bottom_margin_constraint.attribute2.should == :bottom_margin
        @layout.min_bottom_margin_constraint.attribute2.should == :bottom_margin
        @layout.max_bottom_margin_constraint.attribute2.should == :bottom_margin
      end
      it("should have multiplier set") do
        @layout.bottom_margin_constraint.multiplier.should == 1
        @layout.min_bottom_margin_constraint.multiplier.should == 1
        @layout.max_bottom_margin_constraint.multiplier.should == 1
      end
      it("should have constant set") do
        @layout.bottom_margin_constraint.constant.should == 0
        @layout.min_bottom_margin_constraint.constant.should == 0
        @layout.max_bottom_margin_constraint.constant.should == 0
      end
      it("should be resolvable") do
        constraints = @layout.bottom_margin_constraint.resolve_all(@layout)
        min_constraints = @layout.min_bottom_margin_constraint.resolve_all(@layout)
        max_constraints = @layout.max_bottom_margin_constraint.resolve_all(@layout)
        constraints[0].should.be.kind_of(NSLayoutConstraint)
        constraints[0].firstItem.should == @layout.button
        constraints[0].firstAttribute.should == NSLayoutAttributeBottomMargin
        constraints[0].relation.should == NSLayoutRelationEqual
        constraints[0].secondItem.should == @layout
        constraints[0].secondAttribute.should == NSLayoutAttributeBottomMargin
        constraints[0].multiplier.should == 1
        constraints[0].constant.should == 0
      end
    end

    context("should have a leading_margin_constraint") do
      it("should be a Constraint") do
        @layout.leading_margin_constraint.should.be.kind_of(MotionKit::Constraint)
        @layout.min_leading_margin_constraint.should.be.kind_of(MotionKit::Constraint)
        @layout.max_leading_margin_constraint.should.be.kind_of(MotionKit::Constraint)
      end
      it("should have target set") do
        @layout.leading_margin_constraint.target.should == @layout.button
        @layout.min_leading_margin_constraint.target.should == @layout.button
        @layout.max_leading_margin_constraint.target.should == @layout.button
      end
      it("should have attribute set") do
        @layout.leading_margin_constraint.attribute.should == :leading_margin
        @layout.min_leading_margin_constraint.attribute.should == :leading_margin
        @layout.max_leading_margin_constraint.attribute.should == :leading_margin
      end
      it("should have relationship set") do
        @layout.leading_margin_constraint.relationship.should == :equal
        @layout.min_leading_margin_constraint.relationship.should == :gte
        @layout.max_leading_margin_constraint.relationship.should == :lte
      end
      it("should have relative_to set") do
        @layout.leading_margin_constraint.relative_to.should == :superview
        @layout.min_leading_margin_constraint.relative_to.should == :superview
        @layout.max_leading_margin_constraint.relative_to.should == :superview
      end
      it("should have attribute2 set") do
        @layout.leading_margin_constraint.attribute2.should == :leading_margin
        @layout.min_leading_margin_constraint.attribute2.should == :leading_margin
        @layout.max_leading_margin_constraint.attribute2.should == :leading_margin
      end
      it("should have multiplier set") do
        @layout.leading_margin_constraint.multiplier.should == 1
        @layout.min_leading_margin_constraint.multiplier.should == 1
        @layout.max_leading_margin_constraint.multiplier.should == 1
      end
      it("should have constant set") do
        @layout.leading_margin_constraint.constant.should == 0
        @layout.min_leading_margin_constraint.constant.should == 0
        @layout.max_leading_margin_constraint.constant.should == 0
      end
      it("should be resolvable") do
        constraints = @layout.leading_margin_constraint.resolve_all(@layout)
        min_constraints = @layout.min_leading_margin_constraint.resolve_all(@layout)
        max_constraints = @layout.max_leading_margin_constraint.resolve_all(@layout)
        constraints[0].should.be.kind_of(NSLayoutConstraint)
        constraints[0].firstItem.should == @layout.button
        constraints[0].firstAttribute.should == NSLayoutAttributeLeadingMargin
        constraints[0].relation.should == NSLayoutRelationEqual
        constraints[0].secondItem.should == @layout
        constraints[0].secondAttribute.should == NSLayoutAttributeLeadingMargin
        constraints[0].multiplier.should == 1
        constraints[0].constant.should == 0
      end
    end

    context("should have a trailing_margin_constraint") do
      it("should be a Constraint") do
        @layout.trailing_margin_constraint.should.be.kind_of(MotionKit::Constraint)
        @layout.min_trailing_margin_constraint.should.be.kind_of(MotionKit::Constraint)
        @layout.max_trailing_margin_constraint.should.be.kind_of(MotionKit::Constraint)
      end
      it("should have target set") do
        @layout.trailing_margin_constraint.target.should == @layout.button
        @layout.min_trailing_margin_constraint.target.should == @layout.button
        @layout.max_trailing_margin_constraint.target.should == @layout.button
      end
      it("should have attribute set") do
        @layout.trailing_margin_constraint.attribute.should == :trailing_margin
        @layout.min_trailing_margin_constraint.attribute.should == :trailing_margin
        @layout.max_trailing_margin_constraint.attribute.should == :trailing_margin
      end
      it("should have relationship set") do
        @layout.trailing_margin_constraint.relationship.should == :equal
        @layout.min_trailing_margin_constraint.relationship.should == :gte
        @layout.max_trailing_margin_constraint.relationship.should == :lte
      end
      it("should have relative_to set") do
        @layout.trailing_margin_constraint.relative_to.should == :superview
        @layout.min_trailing_margin_constraint.relative_to.should == :superview
        @layout.max_trailing_margin_constraint.relative_to.should == :superview
      end
      it("should have attribute2 set") do
        @layout.trailing_margin_constraint.attribute2.should == :trailing_margin
        @layout.min_trailing_margin_constraint.attribute2.should == :trailing_margin
        @layout.max_trailing_margin_constraint.attribute2.should == :trailing_margin
      end
      it("should have multiplier set") do
        @layout.trailing_margin_constraint.multiplier.should == 1
        @layout.min_trailing_margin_constraint.multiplier.should == 1
        @layout.max_trailing_margin_constraint.multiplier.should == 1
      end
      it("should have constant set") do
        @layout.trailing_margin_constraint.constant.should == 0
        @layout.min_trailing_margin_constraint.constant.should == 0
        @layout.max_trailing_margin_constraint.constant.should == 0
      end
      it("should be resolvable") do
        constraints = @layout.trailing_margin_constraint.resolve_all(@layout)
        min_constraints = @layout.min_trailing_margin_constraint.resolve_all(@layout)
        max_constraints = @layout.max_trailing_margin_constraint.resolve_all(@layout)
        constraints[0].should.be.kind_of(NSLayoutConstraint)
        constraints[0].firstItem.should == @layout.button
        constraints[0].firstAttribute.should == NSLayoutAttributeTrailingMargin
        constraints[0].relation.should == NSLayoutRelationEqual
        constraints[0].secondItem.should == @layout
        constraints[0].secondAttribute.should == NSLayoutAttributeTrailingMargin
        constraints[0].multiplier.should == 1
        constraints[0].constant.should == 0
      end
    end

    context("should have a center_x_within_margins_constraint") do
      it("should be a Constraint") do
        @layout.center_x_within_margins_constraint.should.be.kind_of(MotionKit::Constraint)
        @layout.min_center_x_within_margins_constraint.should.be.kind_of(MotionKit::Constraint)
        @layout.max_center_x_within_margins_constraint.should.be.kind_of(MotionKit::Constraint)
      end
      it("should have target set") do
        @layout.center_x_within_margins_constraint.target.should == @layout.button
        @layout.min_center_x_within_margins_constraint.target.should == @layout.button
        @layout.max_center_x_within_margins_constraint.target.should == @layout.button
      end
      it("should have attribute set") do
        @layout.center_x_within_margins_constraint.attribute.should == :center_x_within_margins
        @layout.min_center_x_within_margins_constraint.attribute.should == :center_x_within_margins
        @layout.max_center_x_within_margins_constraint.attribute.should == :center_x_within_margins
      end
      it("should have relationship set") do
        @layout.center_x_within_margins_constraint.relationship.should == :equal
        @layout.min_center_x_within_margins_constraint.relationship.should == :gte
        @layout.max_center_x_within_margins_constraint.relationship.should == :lte
      end
      it("should have relative_to set") do
        @layout.center_x_within_margins_constraint.relative_to.should == :superview
        @layout.min_center_x_within_margins_constraint.relative_to.should == :superview
        @layout.max_center_x_within_margins_constraint.relative_to.should == :superview
      end
      it("should have attribute2 set") do
        @layout.center_x_within_margins_constraint.attribute2.should == :center_x_within_margins
        @layout.min_center_x_within_margins_constraint.attribute2.should == :center_x_within_margins
        @layout.max_center_x_within_margins_constraint.attribute2.should == :center_x_within_margins
      end
      it("should have multiplier set") do
        @layout.center_x_within_margins_constraint.multiplier.should == 1
        @layout.min_center_x_within_margins_constraint.multiplier.should == 1
        @layout.max_center_x_within_margins_constraint.multiplier.should == 1
      end
      it("should have constant set") do
        @layout.center_x_within_margins_constraint.constant.should == 0
        @layout.min_center_x_within_margins_constraint.constant.should == 0
        @layout.max_center_x_within_margins_constraint.constant.should == 0
      end
      it("should be resolvable") do
        constraints = @layout.center_x_within_margins_constraint.resolve_all(@layout)
        min_constraints = @layout.min_center_x_within_margins_constraint.resolve_all(@layout)
        max_constraints = @layout.max_center_x_within_margins_constraint.resolve_all(@layout)
        constraints[0].should.be.kind_of(NSLayoutConstraint)
        constraints[0].firstItem.should == @layout.button
        constraints[0].firstAttribute.should == NSLayoutAttributeCenterXWithinMargins
        constraints[0].relation.should == NSLayoutRelationEqual
        constraints[0].secondItem.should == @layout
        constraints[0].secondAttribute.should == NSLayoutAttributeCenterXWithinMargins
        constraints[0].multiplier.should == 1
        constraints[0].constant.should == 0
      end
    end

    context("should have a center_y_within_margins_constraint") do
      it("should be a Constraint") do
        @layout.center_y_within_margins_constraint.should.be.kind_of(MotionKit::Constraint)
        @layout.min_center_y_within_margins_constraint.should.be.kind_of(MotionKit::Constraint)
        @layout.max_center_y_within_margins_constraint.should.be.kind_of(MotionKit::Constraint)
      end
      it("should have target set") do
        @layout.center_y_within_margins_constraint.target.should == @layout.button
        @layout.min_center_y_within_margins_constraint.target.should == @layout.button
        @layout.max_center_y_within_margins_constraint.target.should == @layout.button
      end
      it("should have attribute set") do
        @layout.center_y_within_margins_constraint.attribute.should == :center_y_within_margins
        @layout.min_center_y_within_margins_constraint.attribute.should == :center_y_within_margins
        @layout.max_center_y_within_margins_constraint.attribute.should == :center_y_within_margins
      end
      it("should have relationship set") do
        @layout.center_y_within_margins_constraint.relationship.should == :equal
        @layout.min_center_y_within_margins_constraint.relationship.should == :gte
        @layout.max_center_y_within_margins_constraint.relationship.should == :lte
      end
      it("should have relative_to set") do
        @layout.center_y_within_margins_constraint.relative_to.should == :superview
        @layout.min_center_y_within_margins_constraint.relative_to.should == :superview
        @layout.max_center_y_within_margins_constraint.relative_to.should == :superview
      end
      it("should have attribute2 set") do
        @layout.center_y_within_margins_constraint.attribute2.should == :center_y_within_margins
        @layout.min_center_y_within_margins_constraint.attribute2.should == :center_y_within_margins
        @layout.max_center_y_within_margins_constraint.attribute2.should == :center_y_within_margins
      end
      it("should have multiplier set") do
        @layout.center_y_within_margins_constraint.multiplier.should == 1
        @layout.min_center_y_within_margins_constraint.multiplier.should == 1
        @layout.max_center_y_within_margins_constraint.multiplier.should == 1
      end
      it("should have constant set") do
        @layout.center_y_within_margins_constraint.constant.should == 0
        @layout.min_center_y_within_margins_constraint.constant.should == 0
        @layout.max_center_y_within_margins_constraint.constant.should == 0
      end
      it("should be resolvable") do
        constraints = @layout.center_y_within_margins_constraint.resolve_all(@layout)
        min_constraints = @layout.min_center_y_within_margins_constraint.resolve_all(@layout)
        max_constraints = @layout.max_center_y_within_margins_constraint.resolve_all(@layout)
        constraints[0].should.be.kind_of(NSLayoutConstraint)
        constraints[0].firstItem.should == @layout.button
        constraints[0].firstAttribute.should == NSLayoutAttributeCenterYWithinMargins
        constraints[0].relation.should == NSLayoutRelationEqual
        constraints[0].secondItem.should == @layout
        constraints[0].secondAttribute.should == NSLayoutAttributeCenterYWithinMargins
        constraints[0].multiplier.should == 1
        constraints[0].constant.should == 0
      end
    end

    context("should have a size_constraint") do
      it("should be a Constraint") do
        @layout.size_constraint.should.be.kind_of(MotionKit::CompoundConstraint)
        @layout.min_size_constraint.should.be.kind_of(MotionKit::CompoundConstraint)
        @layout.max_size_constraint.should.be.kind_of(MotionKit::CompoundConstraint)
      end
      it("should have target set") do
        @layout.size_constraint.target.should == @layout.button
        @layout.min_size_constraint.target.should == @layout.button
        @layout.max_size_constraint.target.should == @layout.button
      end
      it("should have attribute set") do
        @layout.size_constraint.attribute.should == [:width, :height]
        @layout.min_size_constraint.attribute.should == [:width, :height]
        @layout.max_size_constraint.attribute.should == [:width, :height]
      end
      it("should have relationship set") do
        @layout.size_constraint.relationship.should == :equal
        @layout.min_size_constraint.relationship.should == :gte
        @layout.max_size_constraint.relationship.should == :lte
      end
      it("should have relative_to set") do
        @layout.size_constraint.relative_to.should == :superview
        @layout.min_size_constraint.relative_to.should == :superview
        @layout.max_size_constraint.relative_to.should == :superview
      end
      it("should have attribute2 set") do
        @layout.size_constraint.attribute2.should == [:width, :height]
        @layout.min_size_constraint.attribute2.should == [:width, :height]
        @layout.max_size_constraint.attribute2.should == [:width, :height]
      end
      it("should have multiplier set") do
        @layout.size_constraint.multiplier.should == [1, 1]
        @layout.min_size_constraint.multiplier.should == [1, 1]
        @layout.max_size_constraint.multiplier.should == [1, 1]
      end
      it("should have constant set") do
        @layout.size_constraint.constant.should == [0, 0]
        @layout.min_size_constraint.constant.should == [0, 0]
        @layout.max_size_constraint.constant.should == [0, 0]
      end
      it("should be resolvable") do
        constraints = @layout.size_constraint.resolve_all(@layout)
        min_constraints = @layout.min_size_constraint.resolve_all(@layout)
        max_constraints = @layout.max_size_constraint.resolve_all(@layout)
        constraints[0].should.be.kind_of(NSLayoutConstraint)
        constraints[0].firstItem.should == @layout.button
        constraints[0].firstAttribute.should == NSLayoutAttributeWidth
        constraints[0].relation.should == NSLayoutRelationEqual
        constraints[0].secondItem.should == @layout
        constraints[0].secondAttribute.should == NSLayoutAttributeWidth
        constraints[0].multiplier.should == 1
        constraints[0].constant.should == 0
        constraints[1].should.be.kind_of(NSLayoutConstraint)
        constraints[1].firstItem.should == @layout.button
        constraints[1].firstAttribute.should == NSLayoutAttributeHeight
        constraints[1].relation.should == NSLayoutRelationEqual
        constraints[1].secondItem.should == @layout
        constraints[1].secondAttribute.should == NSLayoutAttributeHeight
        constraints[1].multiplier.should == 1
        constraints[1].constant.should == 0
      end
    end

    context("should have a center_constraint") do
      it("should be a Constraint") do
        @layout.center_constraint.should.be.kind_of(MotionKit::CompoundConstraint)
        @layout.min_center_constraint.should.be.kind_of(MotionKit::CompoundConstraint)
        @layout.max_center_constraint.should.be.kind_of(MotionKit::CompoundConstraint)
      end
      it("should have target set") do
        @layout.center_constraint.target.should == @layout.button
        @layout.min_center_constraint.target.should == @layout.button
        @layout.max_center_constraint.target.should == @layout.button
      end
      it("should have attribute set") do
        @layout.center_constraint.attribute.should == [:center_x, :center_y]
        @layout.min_center_constraint.attribute.should == [:center_x, :center_y]
        @layout.max_center_constraint.attribute.should == [:center_x, :center_y]
      end
      it("should have relationship set") do
        @layout.center_constraint.relationship.should == :equal
        @layout.min_center_constraint.relationship.should == :gte
        @layout.max_center_constraint.relationship.should == :lte
      end
      it("should have relative_to set") do
        @layout.center_constraint.relative_to.should == :superview
        @layout.min_center_constraint.relative_to.should == :superview
        @layout.max_center_constraint.relative_to.should == :superview
      end
      it("should have attribute2 set") do
        @layout.center_constraint.attribute2.should == [:center_x, :center_y]
        @layout.min_center_constraint.attribute2.should == [:center_x, :center_y]
        @layout.max_center_constraint.attribute2.should == [:center_x, :center_y]
      end
      it("should have multiplier set") do
        @layout.center_constraint.multiplier.should == [1, 1]
        @layout.min_center_constraint.multiplier.should == [1, 1]
        @layout.max_center_constraint.multiplier.should == [1, 1]
      end
      it("should have constant set") do
        @layout.center_constraint.constant.should == [0, 0]
        @layout.min_center_constraint.constant.should == [0, 0]
        @layout.max_center_constraint.constant.should == [0, 0]
      end
      it("should be resolvable") do
        constraints = @layout.center_constraint.resolve_all(@layout)
        min_constraints = @layout.min_center_constraint.resolve_all(@layout)
        max_constraints = @layout.max_center_constraint.resolve_all(@layout)
        constraints[0].should.be.kind_of(NSLayoutConstraint)
        constraints[0].firstItem.should == @layout.button
        constraints[0].firstAttribute.should == NSLayoutAttributeCenterX
        constraints[0].relation.should == NSLayoutRelationEqual
        constraints[0].secondItem.should == @layout
        constraints[0].secondAttribute.should == NSLayoutAttributeCenterX
        constraints[0].multiplier.should == 1
        constraints[0].constant.should == 0
        constraints[1].should.be.kind_of(NSLayoutConstraint)
        constraints[1].firstItem.should == @layout.button
        constraints[1].firstAttribute.should == NSLayoutAttributeCenterY
        constraints[1].relation.should == NSLayoutRelationEqual
        constraints[1].secondItem.should == @layout
        constraints[1].secondAttribute.should == NSLayoutAttributeCenterY
        constraints[1].multiplier.should == 1
        constraints[1].constant.should == 0
      end
    end

    context("should have a top_left_constraint") do
      it("should be a Constraint") do
        @layout.top_left_constraint.should.be.kind_of(MotionKit::CompoundConstraint)
        @layout.min_top_left_constraint.should.be.kind_of(MotionKit::CompoundConstraint)
        @layout.max_top_left_constraint.should.be.kind_of(MotionKit::CompoundConstraint)
      end
      it("should have target set") do
        @layout.top_left_constraint.target.should == @layout.button
        @layout.min_top_left_constraint.target.should == @layout.button
        @layout.max_top_left_constraint.target.should == @layout.button
      end
      it("should have attribute set") do
        @layout.top_left_constraint.attribute.should == [:left, :top]
        @layout.min_top_left_constraint.attribute.should == [:left, :top]
        @layout.max_top_left_constraint.attribute.should == [:left, :top]
      end
      it("should have relationship set") do
        @layout.top_left_constraint.relationship.should == :equal
        @layout.min_top_left_constraint.relationship.should == :gte
        @layout.max_top_left_constraint.relationship.should == :lte
      end
      it("should have relative_to set") do
        @layout.top_left_constraint.relative_to.should == :superview
        @layout.min_top_left_constraint.relative_to.should == :superview
        @layout.max_top_left_constraint.relative_to.should == :superview
      end
      it("should have attribute2 set") do
        @layout.top_left_constraint.attribute2.should == [:left, :top]
        @layout.min_top_left_constraint.attribute2.should == [:left, :top]
        @layout.max_top_left_constraint.attribute2.should == [:left, :top]
      end
      it("should have multiplier set") do
        @layout.top_left_constraint.multiplier.should == [1, 1]
        @layout.min_top_left_constraint.multiplier.should == [1, 1]
        @layout.max_top_left_constraint.multiplier.should == [1, 1]
      end
      it("should have constant set") do
        @layout.top_left_constraint.constant.should == [0, 0]
        @layout.min_top_left_constraint.constant.should == [0, 0]
        @layout.max_top_left_constraint.constant.should == [0, 0]
      end
      it("should be resolvable") do
        constraints = @layout.top_left_constraint.resolve_all(@layout)
        min_constraints = @layout.min_top_left_constraint.resolve_all(@layout)
        max_constraints = @layout.max_top_left_constraint.resolve_all(@layout)
        constraints[0].should.be.kind_of(NSLayoutConstraint)
        constraints[0].firstItem.should == @layout.button
        constraints[0].firstAttribute.should == NSLayoutAttributeLeft
        constraints[0].relation.should == NSLayoutRelationEqual
        constraints[0].secondItem.should == @layout
        constraints[0].secondAttribute.should == NSLayoutAttributeLeft
        constraints[0].multiplier.should == 1
        constraints[0].constant.should == 0
        constraints[1].should.be.kind_of(NSLayoutConstraint)
        constraints[1].firstItem.should == @layout.button
        constraints[1].firstAttribute.should == NSLayoutAttributeTop
        constraints[1].relation.should == NSLayoutRelationEqual
        constraints[1].secondItem.should == @layout
        constraints[1].secondAttribute.should == NSLayoutAttributeTop
        constraints[1].multiplier.should == 1
        constraints[1].constant.should == 0
      end
    end

    context("should have a top_right_constraint") do
      it("should be a Constraint") do
        @layout.top_right_constraint.should.be.kind_of(MotionKit::CompoundConstraint)
        @layout.min_top_right_constraint.should.be.kind_of(MotionKit::CompoundConstraint)
        @layout.max_top_right_constraint.should.be.kind_of(MotionKit::CompoundConstraint)
      end
      it("should have target set") do
        @layout.top_right_constraint.target.should == @layout.button
        @layout.min_top_right_constraint.target.should == @layout.button
        @layout.max_top_right_constraint.target.should == @layout.button
      end
      it("should have attribute set") do
        @layout.top_right_constraint.attribute.should == [:right, :top]
        @layout.min_top_right_constraint.attribute.should == [:right, :top]
        @layout.max_top_right_constraint.attribute.should == [:right, :top]
      end
      it("should have relationship set") do
        @layout.top_right_constraint.relationship.should == :equal
        @layout.min_top_right_constraint.relationship.should == :gte
        @layout.max_top_right_constraint.relationship.should == :lte
      end
      it("should have relative_to set") do
        @layout.top_right_constraint.relative_to.should == :superview
        @layout.min_top_right_constraint.relative_to.should == :superview
        @layout.max_top_right_constraint.relative_to.should == :superview
      end
      it("should have attribute2 set") do
        @layout.top_right_constraint.attribute2.should == [:right, :top]
        @layout.min_top_right_constraint.attribute2.should == [:right, :top]
        @layout.max_top_right_constraint.attribute2.should == [:right, :top]
      end
      it("should have multiplier set") do
        @layout.top_right_constraint.multiplier.should == [1, 1]
        @layout.min_top_right_constraint.multiplier.should == [1, 1]
        @layout.max_top_right_constraint.multiplier.should == [1, 1]
      end
      it("should have constant set") do
        @layout.top_right_constraint.constant.should == [0, 0]
        @layout.min_top_right_constraint.constant.should == [0, 0]
        @layout.max_top_right_constraint.constant.should == [0, 0]
      end
      it("should be resolvable") do
        constraints = @layout.top_right_constraint.resolve_all(@layout)
        min_constraints = @layout.min_top_right_constraint.resolve_all(@layout)
        max_constraints = @layout.max_top_right_constraint.resolve_all(@layout)
        constraints[0].should.be.kind_of(NSLayoutConstraint)
        constraints[0].firstItem.should == @layout.button
        constraints[0].firstAttribute.should == NSLayoutAttributeRight
        constraints[0].relation.should == NSLayoutRelationEqual
        constraints[0].secondItem.should == @layout
        constraints[0].secondAttribute.should == NSLayoutAttributeRight
        constraints[0].multiplier.should == 1
        constraints[0].constant.should == 0
        constraints[1].should.be.kind_of(NSLayoutConstraint)
        constraints[1].firstItem.should == @layout.button
        constraints[1].firstAttribute.should == NSLayoutAttributeTop
        constraints[1].relation.should == NSLayoutRelationEqual
        constraints[1].secondItem.should == @layout
        constraints[1].secondAttribute.should == NSLayoutAttributeTop
        constraints[1].multiplier.should == 1
        constraints[1].constant.should == 0
      end
    end

    context("should have a bottom_left_constraint") do
      it("should be a Constraint") do
        @layout.bottom_left_constraint.should.be.kind_of(MotionKit::CompoundConstraint)
        @layout.min_bottom_left_constraint.should.be.kind_of(MotionKit::CompoundConstraint)
        @layout.max_bottom_left_constraint.should.be.kind_of(MotionKit::CompoundConstraint)
      end
      it("should have target set") do
        @layout.bottom_left_constraint.target.should == @layout.button
        @layout.min_bottom_left_constraint.target.should == @layout.button
        @layout.max_bottom_left_constraint.target.should == @layout.button
      end
      it("should have attribute set") do
        @layout.bottom_left_constraint.attribute.should == [:left, :bottom]
        @layout.min_bottom_left_constraint.attribute.should == [:left, :bottom]
        @layout.max_bottom_left_constraint.attribute.should == [:left, :bottom]
      end
      it("should have relationship set") do
        @layout.bottom_left_constraint.relationship.should == :equal
        @layout.min_bottom_left_constraint.relationship.should == :gte
        @layout.max_bottom_left_constraint.relationship.should == :lte
      end
      it("should have relative_to set") do
        @layout.bottom_left_constraint.relative_to.should == :superview
        @layout.min_bottom_left_constraint.relative_to.should == :superview
        @layout.max_bottom_left_constraint.relative_to.should == :superview
      end
      it("should have attribute2 set") do
        @layout.bottom_left_constraint.attribute2.should == [:left, :bottom]
        @layout.min_bottom_left_constraint.attribute2.should == [:left, :bottom]
        @layout.max_bottom_left_constraint.attribute2.should == [:left, :bottom]
      end
      it("should have multiplier set") do
        @layout.bottom_left_constraint.multiplier.should == [1, 1]
        @layout.min_bottom_left_constraint.multiplier.should == [1, 1]
        @layout.max_bottom_left_constraint.multiplier.should == [1, 1]
      end
      it("should have constant set") do
        @layout.bottom_left_constraint.constant.should == [0, 0]
        @layout.min_bottom_left_constraint.constant.should == [0, 0]
        @layout.max_bottom_left_constraint.constant.should == [0, 0]
      end
      it("should be resolvable") do
        constraints = @layout.bottom_left_constraint.resolve_all(@layout)
        min_constraints = @layout.min_bottom_left_constraint.resolve_all(@layout)
        max_constraints = @layout.max_bottom_left_constraint.resolve_all(@layout)
        constraints[0].should.be.kind_of(NSLayoutConstraint)
        constraints[0].firstItem.should == @layout.button
        constraints[0].firstAttribute.should == NSLayoutAttributeLeft
        constraints[0].relation.should == NSLayoutRelationEqual
        constraints[0].secondItem.should == @layout
        constraints[0].secondAttribute.should == NSLayoutAttributeLeft
        constraints[0].multiplier.should == 1
        constraints[0].constant.should == 0
        constraints[1].should.be.kind_of(NSLayoutConstraint)
        constraints[1].firstItem.should == @layout.button
        constraints[1].firstAttribute.should == NSLayoutAttributeBottom
        constraints[1].relation.should == NSLayoutRelationEqual
        constraints[1].secondItem.should == @layout
        constraints[1].secondAttribute.should == NSLayoutAttributeBottom
        constraints[1].multiplier.should == 1
        constraints[1].constant.should == 0
      end
    end

    context("should have a bottom_right_constraint") do
      it("should be a Constraint") do
        @layout.bottom_right_constraint.should.be.kind_of(MotionKit::CompoundConstraint)
        @layout.min_bottom_right_constraint.should.be.kind_of(MotionKit::CompoundConstraint)
        @layout.max_bottom_right_constraint.should.be.kind_of(MotionKit::CompoundConstraint)
      end
      it("should have target set") do
        @layout.bottom_right_constraint.target.should == @layout.button
        @layout.min_bottom_right_constraint.target.should == @layout.button
        @layout.max_bottom_right_constraint.target.should == @layout.button
      end
      it("should have attribute set") do
        @layout.bottom_right_constraint.attribute.should == [:right, :bottom]
        @layout.min_bottom_right_constraint.attribute.should == [:right, :bottom]
        @layout.max_bottom_right_constraint.attribute.should == [:right, :bottom]
      end
      it("should have relationship set") do
        @layout.bottom_right_constraint.relationship.should == :equal
        @layout.min_bottom_right_constraint.relationship.should == :gte
        @layout.max_bottom_right_constraint.relationship.should == :lte
      end
      it("should have relative_to set") do
        @layout.bottom_right_constraint.relative_to.should == :superview
        @layout.min_bottom_right_constraint.relative_to.should == :superview
        @layout.max_bottom_right_constraint.relative_to.should == :superview
      end
      it("should have attribute2 set") do
        @layout.bottom_right_constraint.attribute2.should == [:right, :bottom]
        @layout.min_bottom_right_constraint.attribute2.should == [:right, :bottom]
        @layout.max_bottom_right_constraint.attribute2.should == [:right, :bottom]
      end
      it("should have multiplier set") do
        @layout.bottom_right_constraint.multiplier.should == [1, 1]
        @layout.min_bottom_right_constraint.multiplier.should == [1, 1]
        @layout.max_bottom_right_constraint.multiplier.should == [1, 1]
      end
      it("should have constant set") do
        @layout.bottom_right_constraint.constant.should == [0, 0]
        @layout.min_bottom_right_constraint.constant.should == [0, 0]
        @layout.max_bottom_right_constraint.constant.should == [0, 0]
      end
      it("should be resolvable") do
        constraints = @layout.bottom_right_constraint.resolve_all(@layout)
        min_constraints = @layout.min_bottom_right_constraint.resolve_all(@layout)
        max_constraints = @layout.max_bottom_right_constraint.resolve_all(@layout)
        constraints[0].should.be.kind_of(NSLayoutConstraint)
        constraints[0].firstItem.should == @layout.button
        constraints[0].firstAttribute.should == NSLayoutAttributeRight
        constraints[0].relation.should == NSLayoutRelationEqual
        constraints[0].secondItem.should == @layout
        constraints[0].secondAttribute.should == NSLayoutAttributeRight
        constraints[0].multiplier.should == 1
        constraints[0].constant.should == 0
        constraints[1].should.be.kind_of(NSLayoutConstraint)
        constraints[1].firstItem.should == @layout.button
        constraints[1].firstAttribute.should == NSLayoutAttributeBottom
        constraints[1].relation.should == NSLayoutRelationEqual
        constraints[1].secondItem.should == @layout
        constraints[1].secondAttribute.should == NSLayoutAttributeBottom
        constraints[1].multiplier.should == 1
        constraints[1].constant.should == 0
      end
    end

    context("should have a above_constraint") do
      it("should be a Constraint") do
        @layout.above_constraint.should.be.kind_of(MotionKit::Constraint)
      end
      it("should have target set") do
        @layout.above_constraint.target.should == @layout.button
      end
      it("should have attribute set") do
        @layout.above_constraint.attribute.should == :bottom
      end
      it("should have relationship set") do
        @layout.above_constraint.relationship.should == :equal
      end
      it("should have relative_to set") do
        @layout.above_constraint.relative_to.should == @layout.view
      end
      it("should have attribute2 set") do
        @layout.above_constraint.attribute2.should == :top
      end
      it("should have multiplier set") do
        @layout.above_constraint.multiplier.should == 1
      end
      it("should have constant set") do
        @layout.above_constraint.constant.should == 0
      end
      it("should be resolvable") do
        constraints = @layout.above_constraint.resolve_all(@layout)
        constraints[0].should.be.kind_of(NSLayoutConstraint)
        constraints[0].firstItem.should == @layout.button
        constraints[0].firstAttribute.should == NSLayoutAttributeBottom
        constraints[0].relation.should == NSLayoutRelationEqual
        constraints[0].secondItem.should == @layout.view
        constraints[0].secondAttribute.should == NSLayoutAttributeTop
        constraints[0].multiplier.should == 1
        constraints[0].constant.should == 0
      end
    end

    context("should have a below_constraint") do
      it("should be a Constraint") do
        @layout.below_constraint.should.be.kind_of(MotionKit::Constraint)
      end
      it("should have target set") do
        @layout.below_constraint.target.should == @layout.button
      end
      it("should have attribute set") do
        @layout.below_constraint.attribute.should == :top
      end
      it("should have relationship set") do
        @layout.below_constraint.relationship.should == :equal
      end
      it("should have relative_to set") do
        @layout.below_constraint.relative_to.should == @layout.view
      end
      it("should have attribute2 set") do
        @layout.below_constraint.attribute2.should == :bottom
      end
      it("should have multiplier set") do
        @layout.below_constraint.multiplier.should == 1
      end
      it("should have constant set") do
        @layout.below_constraint.constant.should == 0
      end
      it("should be resolvable") do
        constraints = @layout.below_constraint.resolve_all(@layout)
        constraints[0].should.be.kind_of(NSLayoutConstraint)
        constraints[0].firstItem.should == @layout.button
        constraints[0].firstAttribute.should == NSLayoutAttributeTop
        constraints[0].relation.should == NSLayoutRelationEqual
        constraints[0].secondItem.should == @layout.view
        constraints[0].secondAttribute.should == NSLayoutAttributeBottom
        constraints[0].multiplier.should == 1
        constraints[0].constant.should == 0
      end
    end

    context("should have a before_constraint") do
      it("should be a Constraint") do
        @layout.before_constraint.should.be.kind_of(MotionKit::Constraint)
      end
      it("should have target set") do
        @layout.before_constraint.target.should == @layout.button
      end
      it("should have attribute set") do
        @layout.before_constraint.attribute.should == :right
      end
      it("should have relationship set") do
        @layout.before_constraint.relationship.should == :equal
      end
      it("should have relative_to set") do
        @layout.before_constraint.relative_to.should == @layout.view
      end
      it("should have attribute2 set") do
        @layout.before_constraint.attribute2.should == :left
      end
      it("should have multiplier set") do
        @layout.before_constraint.multiplier.should == 1
      end
      it("should have constant set") do
        @layout.before_constraint.constant.should == 0
      end
      it("should be resolvable") do
        constraints = @layout.before_constraint.resolve_all(@layout)
        constraints[0].should.be.kind_of(NSLayoutConstraint)
        constraints[0].firstItem.should == @layout.button
        constraints[0].firstAttribute.should == NSLayoutAttributeRight
        constraints[0].relation.should == NSLayoutRelationEqual
        constraints[0].secondItem.should == @layout.view
        constraints[0].secondAttribute.should == NSLayoutAttributeLeft
        constraints[0].multiplier.should == 1
        constraints[0].constant.should == 0
      end
    end

    context("should have a after_constraint") do
      it("should be a Constraint") do
        @layout.after_constraint.should.be.kind_of(MotionKit::Constraint)
      end
      it("should have target set") do
        @layout.after_constraint.target.should == @layout.button
      end
      it("should have attribute set") do
        @layout.after_constraint.attribute.should == :left
      end
      it("should have relationship set") do
        @layout.after_constraint.relationship.should == :equal
      end
      it("should have relative_to set") do
        @layout.after_constraint.relative_to.should == @layout.view
      end
      it("should have attribute2 set") do
        @layout.after_constraint.attribute2.should == :right
      end
      it("should have multiplier set") do
        @layout.after_constraint.multiplier.should == 1
      end
      it("should have constant set") do
        @layout.after_constraint.constant.should == 0
      end
      it("should be resolvable") do
        constraints = @layout.after_constraint.resolve_all(@layout)
        constraints[0].should.be.kind_of(NSLayoutConstraint)
        constraints[0].firstItem.should == @layout.button
        constraints[0].firstAttribute.should == NSLayoutAttributeLeft
        constraints[0].relation.should == NSLayoutRelationEqual
        constraints[0].secondItem.should == @layout.view
        constraints[0].secondAttribute.should == NSLayoutAttributeRight
        constraints[0].multiplier.should == 1
        constraints[0].constant.should == 0
      end
    end
  end
end
