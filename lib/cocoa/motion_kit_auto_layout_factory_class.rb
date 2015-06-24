# @provides MotionKit::AutoLayoutFactory
module MotionKit
  class AutoLayoutFactory

    def initialize(view)
      @view = view
      @next_view = view
      @constraints = []
    end

    def set(view)
      @next_view = view
      self
    end

    def add(constraint)
      @constraints << constraint
    end

    # left.equals(other_view)
    # left(other_view)
    # left(20)
    # left(other_view, :equal)
    def left(value=nil, rel=nil)
      make_constraint(:left, rel, value)
    end
    alias x left

    # min_left.equals(other_view)
    # min_left(other_view)
    # min_left(20)
    def min_left(value=nil)
      left(value, :gte)
    end
    alias min_x min_left

    # max_left.equals(other_view)
    # max_left(other_view)
    # max_left(20)
    def max_left(value=nil)
      left(value, :lte)
    end
    alias max_x max_left

    # leading.equals(other_view)
    # leading(other_view)
    # leading(20)
    # leading(other_view, :equal)
    def leading(value=nil, rel=nil)
      make_constraint(:leading, rel, value)
    end

    # min_leading.equals(other_view)
    # min_leading(other_view)
    # min_leading(20)
    def min_leading(value=nil)
      leading(value, :gte)
    end

    # max_leading.equals(other_view)
    # max_leading(other_view)
    # max_leading(20)
    def max_leading(value=nil)
      leading(value, :lte)
    end

    # center_x.equals(other_view)
    # center_x(other_view)
    # center_x(20)
    # center_x(other_view, :equal)
    def center_x(value=nil, rel=nil)
      make_constraint(:center_x, rel, value)
    end

    # min_center_x.equals(other_view)
    # min_center_x(other_view)
    # min_center_x(20)
    def min_center_x(value=nil)
      center_x(value, :gte)
    end

    # max_center_x.equals(other_view)
    # max_center_x(other_view)
    # max_center_x(20)
    def max_center_x(value=nil)
      center_x(value, :lte)
    end

    # right.equals(other_view)
    # right(other_view)
    # right(20)
    # right(other_view, :equal)
    def right(value=nil, rel=nil)
      make_constraint(:right, rel, value)
    end

    # min_right.equals(other_view)
    # min_right(other_view)
    # min_right(20)
    def min_right(value=nil)
      right(value, :gte)
    end

    # max_right.equals(other_view)
    # max_right(other_view)
    # max_right(20)
    def max_right(value=nil)
      right(value, :lte)
    end

    # trailing.equals(other_view)
    # trailing(other_view)
    # trailing(20)
    # trailing(other_view, :equal)
    def trailing(value=nil, rel=nil)
      make_constraint(:trailing, rel, value)
    end

    # min_trailing.equals(other_view)
    # min_trailing(other_view)
    # min_trailing(20)
    def min_trailing(value=nil)
      trailing(value, :gte)
    end

    # max_trailing.equals(other_view)
    # max_trailing(other_view)
    # max_trailing(20)
    def max_trailing(value=nil)
      trailing(value, :lte)
    end

    # top.equals(other_view)
    # top(other_view)
    # top(20)
    # top(other_view, :equal)
    def top(value=nil, rel=nil)
      make_constraint(:top, rel, value)
    end
    alias y top

    # min_top.equals(other_view)
    # min_top(other_view)
    # min_top(20)
    def min_top(value=nil)
      top(value, :gte)
    end
    alias min_y min_top

    # max_top.equals(other_view)
    # max_top(other_view)
    # max_top(20)
    def max_top(value=nil)
      top(value, :lte)
    end
    alias max_y max_top

    # center_y.equals(other_view)
    # center_y(other_view)
    # center_y(20)
    # center_y(other_view, :equal)
    def center_y(value=nil, rel=nil)
      make_constraint(:center_y, rel, value)
    end

    # min_center_y.equals(other_view)
    # min_center_y(other_view)
    # min_center_y(20)
    def min_center_y(value=nil)
      center_y(value, :gte)
    end

    # max_center_y.equals(other_view)
    # max_center_y(other_view)
    # max_center_y(20)
    def max_center_y(value=nil)
      center_y(value, :lte)
    end

    # bottom.equals(other_view)
    # bottom(other_view)
    # bottom(20)
    # bottom(other_view, :equal)
    def bottom(value=nil, rel=nil)
      make_constraint(:bottom, rel, value)
    end

    # min_bottom.equals(other_view)
    # min_bottom(other_view)
    # min_bottom(20)
    def min_bottom(value=nil)
      bottom(value, :gte)
    end

    # max_bottom.equals(other_view)
    # max_bottom(other_view)
    # max_bottom(20)
    def max_bottom(value=nil)
      bottom(value, :lte)
    end

    # baseline.equals(other_view)
    # baseline(other_view)
    # baseline(20)
    # baseline(other_view, :equal)
    def baseline(value=nil, rel=nil)
      make_constraint(:baseline, rel, value)
    end

    # min_baseline.equals(other_view)
    # min_baseline(other_view)
    # min_baseline(20)
    def min_baseline(value=nil)
      baseline(value, :gte)
    end

    # max_baseline.equals(other_view)
    # max_baseline(other_view)
    # max_baseline(20)
    def max_baseline(value=nil)
      baseline(value, :lte)
    end

    # width.equals(other_view)
    # width(other_view)
    # width(20)
    # width(other_view, :equal)
    def width(value=nil, rel=nil)
      make_constraint(:width, rel, value)
    end
    alias w width

    # min_width.equals(other_view)
    # min_width(other_view)
    # min_width(20)
    def min_width(value=nil)
      width(value, :gte)
    end

    # max_width.equals(other_view)
    # max_width(other_view)
    # max_width(20)
    def max_width(value=nil)
      width(value, :lte)
    end

    # height.equals(other_view)
    # height(other_view)
    # height(20)
    # height(other_view, :equal)
    def height(value=nil, rel=nil)
      make_constraint(:height, :equal, value)
    end
    alias h height

    # min_height.equals(other_view)
    # min_height(other_view)
    # min_height(20)
    def min_height(value=nil)
      make_constraint(:height, :gte, value)
    end

    # max_height.equals(other_view)
    # max_height(other_view)
    # max_height(20)
    def max_height(value=nil)
      make_constraint(:height, :lte, value)
    end

    # last_baseline.equals(other_view)
    # last_baseline(other_view)
    # last_baseline(20)
    # last_baseline(other_view, :equal)
    def last_baseline(value=nil, rel=nil)
      make_constraint(:last_baseline, rel, value)
    end

    # min_last_baseline.equals(other_view)
    # min_last_baseline(other_view)
    # min_last_baseline(20)
    def min_last_baseline(value=nil)
      last_baseline(value, :gte)
    end

    # max_last_baseline.equals(other_view)
    # max_last_baseline(other_view)
    # max_last_baseline(20)
    def max_last_baseline(value=nil)
      last_baseline(value, :lte)
    end
    # first_baseline.equals(other_view)
    # first_baseline(other_view)
    # first_baseline(20)
    # first_baseline(other_view, :equal)
    def first_baseline(value=nil, rel=nil)
      make_constraint(:first_baseline, rel, value)
    end

    # min_first_baseline.equals(other_view)
    # min_first_baseline(other_view)
    # min_first_baseline(20)
    def min_first_baseline(value=nil)
      first_baseline(value, :gte)
    end

    # max_first_baseline.equals(other_view)
    # max_first_baseline(other_view)
    # max_first_baseline(20)
    def max_first_baseline(value=nil)
      first_baseline(value, :lte)
    end
    # left_margin.equals(other_view)
    # left_margin(other_view)
    # left_margin(20)
    # left_margin(other_view, :equal)
    def left_margin(value=nil, rel=nil)
      make_constraint(:left_margin, rel, value)
    end

    # min_left_margin.equals(other_view)
    # min_left_margin(other_view)
    # min_left_margin(20)
    def min_left_margin(value=nil)
      left_margin(value, :gte)
    end

    # max_left_margin.equals(other_view)
    # max_left_margin(other_view)
    # max_left_margin(20)
    def max_left_margin(value=nil)
      left_margin(value, :lte)
    end
    # right_margin.equals(other_view)
    # right_margin(other_view)
    # right_margin(20)
    # right_margin(other_view, :equal)
    def right_margin(value=nil, rel=nil)
      make_constraint(:right_margin, rel, value)
    end

    # min_right_margin.equals(other_view)
    # min_right_margin(other_view)
    # min_right_margin(20)
    def min_right_margin(value=nil)
      right_margin(value, :gte)
    end

    # max_right_margin.equals(other_view)
    # max_right_margin(other_view)
    # max_right_margin(20)
    def max_right_margin(value=nil)
      right_margin(value, :lte)
    end
    # top_margin.equals(other_view)
    # top_margin(other_view)
    # top_margin(20)
    # top_margin(other_view, :equal)
    def top_margin(value=nil, rel=nil)
      make_constraint(:top_margin, rel, value)
    end

    # min_top_margin.equals(other_view)
    # min_top_margin(other_view)
    # min_top_margin(20)
    def min_top_margin(value=nil)
      top_margin(value, :gte)
    end

    # max_top_margin.equals(other_view)
    # max_top_margin(other_view)
    # max_top_margin(20)
    def max_top_margin(value=nil)
      top_margin(value, :lte)
    end
    # bottom_margin.equals(other_view)
    # bottom_margin(other_view)
    # bottom_margin(20)
    # bottom_margin(other_view, :equal)
    def bottom_margin(value=nil, rel=nil)
      make_constraint(:bottom_margin, rel, value)
    end

    # min_bottom_margin.equals(other_view)
    # min_bottom_margin(other_view)
    # min_bottom_margin(20)
    def min_bottom_margin(value=nil)
      bottom_margin(value, :gte)
    end

    # max_bottom_margin.equals(other_view)
    # max_bottom_margin(other_view)
    # max_bottom_margin(20)
    def max_bottom_margin(value=nil)
      bottom_margin(value, :lte)
    end
    # leading_margin.equals(other_view)
    # leading_margin(other_view)
    # leading_margin(20)
    # leading_margin(other_view, :equal)
    def leading_margin(value=nil, rel=nil)
      make_constraint(:leading_margin, rel, value)
    end

    # min_leading_margin.equals(other_view)
    # min_leading_margin(other_view)
    # min_leading_margin(20)
    def min_leading_margin(value=nil)
      leading_margin(value, :gte)
    end

    # max_leading_margin.equals(other_view)
    # max_leading_margin(other_view)
    # max_leading_margin(20)
    def max_leading_margin(value=nil)
      leading_margin(value, :lte)
    end
    # trailing_margin.equals(other_view)
    # trailing_margin(other_view)
    # trailing_margin(20)
    # trailing_margin(other_view, :equal)
    def trailing_margin(value=nil, rel=nil)
      make_constraint(:trailing_margin, rel, value)
    end

    # min_trailing_margin.equals(other_view)
    # min_trailing_margin(other_view)
    # min_trailing_margin(20)
    def min_trailing_margin(value=nil)
      trailing_margin(value, :gte)
    end

    # max_trailing_margin.equals(other_view)
    # max_trailing_margin(other_view)
    # max_trailing_margin(20)
    def max_trailing_margin(value=nil)
      trailing_margin(value, :lte)
    end
    # center_x_within_margins.equals(other_view)
    # center_x_within_margins(other_view)
    # center_x_within_margins(20)
    # center_x_within_margins(other_view, :equal)
    def center_x_within_margins(value=nil, rel=nil)
      make_constraint(:center_x_within_margins, rel, value)
    end

    # min_center_x_within_margins.equals(other_view)
    # min_center_x_within_margins(other_view)
    # min_center_x_within_margins(20)
    def min_center_x_within_margins(value=nil)
      center_x_within_margins(value, :gte)
    end

    # max_center_x_within_margins.equals(other_view)
    # max_center_x_within_margins(other_view)
    # max_center_x_within_margins(20)
    def max_center_x_within_margins(value=nil)
      center_x_within_margins(value, :lte)
    end
    # center_y_within_margins.equals(other_view)
    # center_y_within_margins(other_view)
    # center_y_within_margins(20)
    # center_y_within_margins(other_view, :equal)
    def center_y_within_margins(value=nil, rel=nil)
      make_constraint(:center_y_within_margins, rel, value)
    end

    # min_center_y_within_margins.equals(other_view)
    # min_center_y_within_margins(other_view)
    # min_center_y_within_margins(20)
    def min_center_y_within_margins(value=nil)
      center_y_within_margins(value, :gte)
    end

    # max_center_y_within_margins.equals(other_view)
    # max_center_y_within_margins(other_view)
    # max_center_y_within_margins(20)
    def max_center_y_within_margins(value=nil)
      center_y_within_margins(value, :lte)
    end

    # size.equals(other_view)
    # size(other_view)
    # size(other_view, :equal)
    def size(value=nil, rel=nil)
      make_constraint(:size, rel, value, SizeConstraint)
    end

    # min_size.equals(other_view)
    # min_size(other_view)
    def min_size(value=nil)
      size(value, :gte)
    end

    # max_size.equals(other_view)
    # max_size(other_view)
    def max_size(value=nil)
      size(value, :lte)
    end

    # center.equals(other_view)
    # center(other_view)
    # center(other_view, :equal)
    def center(value=nil, rel=nil)
      make_constraint([:center_x, :center_y], rel, value, PointConstraint)
    end

    # min_center.equals(other_view)
    # min_center(other_view)
    def min_center(value=nil)
      center(value, :gte)
    end

    # max_center.equals(other_view)
    # max_center(other_view)
    def max_center(value=nil)
      center(value, :lte)
    end

    # top_left.equals(other_view)
    # top_left(other_view)
    # top_left(other_view, :equal)
    def top_left(value=nil, rel=nil)
      make_constraint([:left, :top], rel, value, PointConstraint)
    end

    # min_top_left.equals(other_view)
    # min_top_left(other_view)
    def min_top_left(value=nil)
      top_left(value, :gte)
    end

    # max_top_left.equals(other_view)
    # max_top_left(other_view)
    def max_top_left(value=nil)
      top_left(value, :lte)
    end

    # top_right.equals(other_view)
    # top_right(other_view)
    # top_right(other_view, :equal)
    def top_right(value=nil, rel=nil)
      make_constraint([:right, :top], rel, value, PointConstraint)
    end

    # min_top_right.equals(other_view)
    # min_top_right(other_view)
    def min_top_right(value=nil)
      top_right(value, :gte)
    end

    # max_top_right.equals(other_view)
    # max_top_right(other_view)
    def max_top_right(value=nil)
      top_right(value, :lte)
    end

    # bottom_left.equals(other_view)
    # bottom_left(other_view)
    # bottom_left(other_view, :equal)
    def bottom_left(value=nil, rel=nil)
      make_constraint([:left, :bottom], rel, value, PointConstraint)
    end

    # min_bottom_left.equals(other_view)
    # min_bottom_left(other_view)
    def min_bottom_left(value=nil)
      bottom_left(value, :gte)
    end

    # max_bottom_left.equals(other_view)
    # max_bottom_left(other_view)
    def max_bottom_left(value=nil)
      bottom_left(value, :lte)
    end

    # bottom_right.equals(other_view)
    # bottom_right(other_view)
    # bottom_right(other_view, :equal)
    def bottom_right(value=nil, rel=nil)
      make_constraint([:right, :bottom], rel, value, PointConstraint)
    end

    # min_bottom_right.equals(other_view)
    # min_bottom_right(other_view)
    def min_bottom_right(value=nil)
      bottom_right(value, :gte)
    end

    # max_bottom_right.equals(other_view)
    # max_bottom_right(other_view)
    def max_bottom_right(value=nil)
      bottom_right(value, :lte)
    end

    # above(other_view)
    def above(view)
      constraint = Constraint.new(@view, :bottom, :equal, view, :top)
      add constraint
      return constraint
    end

    # below(other_view)
    def below(view)
      constraint = Constraint.new(@view, :top, :equal, view, :bottom)
      add constraint
      return constraint
    end

    # before(other_view)
    def before(view)
      constraint = Constraint.new(@view, :right, :equal, view, :left)
      add constraint
      return constraint
    end
    alias left_of before

    # after(other_view)
    def after(view)
      constraint = Constraint.new(@view, :left, :equal, view, :right)
      add constraint
      return constraint
    end
    alias right_of after

  private

    def make_constraint(attribute, relationship, value=nil, _ConstraintClass=Constraint)
      constraint = _ConstraintClass.new(@next_view, attribute, relationship)
      @next_view = @view

      if value
        constraint.equals(value)
      end
      add constraint
      constraint
    end

  end
end
