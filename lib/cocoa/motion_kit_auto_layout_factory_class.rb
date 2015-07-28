# @provides MotionKit::AutoLayoutFactory
module MotionKit
  class AutoLayoutFactory

    def initialize(view)
      @view = view
      @next_view = nil
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
    def left(value=nil)
      make_constraint(:left, :equal, value)
    end

    # min_left.equals(other_view)
    # min_left(other_view)
    # min_left(20)
    def min_left(value=nil)
      make_constraint(:left, :gte, value)
    end

    # max_left.equals(other_view)
    # max_left(other_view)
    # max_left(20)
    def max_left(value=nil)
      make_constraint(:left, :lte, value)
    end

    # leading.equals(other_view)
    # leading(other_view)
    # leading(20)
    def leading(value=nil)
      make_constraint(:leading, :equal, value)
    end

    # min_leading.equals(other_view)
    # min_leading(other_view)
    # min_leading(20)
    def min_leading(value=nil)
      make_constraint(:leading, :gte, value)
    end

    # max_leading.equals(other_view)
    # max_leading(other_view)
    # max_leading(20)
    def max_leading(value=nil)
      make_constraint(:leading, :lte, value)
    end

    # center_x.equals(other_view)
    # center_x(other_view)
    # center_x(20)
    def center_x(value=nil)
      make_constraint(:center_x, :equal, value)
    end

    # min_center_x.equals(other_view)
    # min_center_x(other_view)
    # min_center_x(20)
    def min_center_x(value=nil)
      make_constraint(:center_x, :gte, value)
    end

    # max_center_x.equals(other_view)
    # max_center_x(other_view)
    # max_center_x(20)
    def max_center_x(value=nil)
      make_constraint(:center_x, :lte, value)
    end

    # right.equals(other_view)
    # right(other_view)
    # right(20)
    def right(value=nil)
      make_constraint(:right, :equal, value)
    end

    # min_right.equals(other_view)
    # min_right(other_view)
    # min_right(20)
    def min_right(value=nil)
      make_constraint(:right, :gte, value)
    end

    # max_right.equals(other_view)
    # max_right(other_view)
    # max_right(20)
    def max_right(value=nil)
      make_constraint(:right, :lte, value)
    end

    # trailing.equals(other_view)
    # trailing(other_view)
    # trailing(20)
    def trailing(value=nil)
      make_constraint(:trailing, :equal, value)
    end

    # min_trailing.equals(other_view)
    # min_trailing(other_view)
    # min_trailing(20)
    def min_trailing(value=nil)
      make_constraint(:trailing, :gte, value)
    end

    # max_trailing.equals(other_view)
    # max_trailing(other_view)
    # max_trailing(20)
    def max_trailing(value=nil)
      make_constraint(:trailing, :lte, value)
    end

    # top.equals(other_view)
    # top(other_view)
    # top(20)
    def top(value=nil)
      make_constraint(:top, :equal, value)
    end

    # min_top.equals(other_view)
    # min_top(other_view)
    # min_top(20)
    def min_top(value=nil)
      make_constraint(:top, :gte, value)
    end

    # max_top.equals(other_view)
    # max_top(other_view)
    # max_top(20)
    def max_top(value=nil)
      make_constraint(:top, :lte, value)
    end

    # center_y.equals(other_view)
    # center_y(other_view)
    # center_y(20)
    def center_y(value=nil)
      make_constraint(:center_y, :equal, value)
    end

    # min_center_y.equals(other_view)
    # min_center_y(other_view)
    # min_center_y(20)
    def min_center_y(value=nil)
      make_constraint(:center_y, :gte, value)
    end

    # max_center_y.equals(other_view)
    # max_center_y(other_view)
    # max_center_y(20)
    def max_center_y(value=nil)
      make_constraint(:center_y, :lte, value)
    end

    # bottom.equals(other_view)
    # bottom(other_view)
    # bottom(20)
    def bottom(value=nil)
      make_constraint(:bottom, :equal, value)
    end

    # min_bottom.equals(other_view)
    # min_bottom(other_view)
    # min_bottom(20)
    def min_bottom(value=nil)
      make_constraint(:bottom, :gte, value)
    end

    # max_bottom.equals(other_view)
    # max_bottom(other_view)
    # max_bottom(20)
    def max_bottom(value=nil)
      make_constraint(:bottom, :lte, value)
    end

    # baseline.equals(other_view)
    # baseline(other_view)
    # baseline(20)
    def baseline(value=nil)
      make_constraint(:baseline, :equal, value)
    end

    # min_baseline.equals(other_view)
    # min_baseline(other_view)
    # min_baseline(20)
    def min_baseline(value=nil)
      make_constraint(:baseline, :gte, value)
    end

    # max_baseline.equals(other_view)
    # max_baseline(other_view)
    # max_baseline(20)
    def max_baseline(value=nil)
      make_constraint(:baseline, :lte, value)
    end

    # width.equals(other_view)
    # width(other_view)
    # width(20)
    # width(other_view)
    def width(value=nil)
      make_constraint(:width, :equal, value)
    end

    # min_width.equals(other_view)
    # min_width(other_view)
    # min_width(20)
    def min_width(value=nil)
      make_constraint(:width, :gte, value)
    end

    # max_width.equals(other_view)
    # max_width(other_view)
    # max_width(20)
    def max_width(value=nil)
      make_constraint(:width, :lte, value)
    end

    # height.equals(other_view)
    # height(other_view)
    # height(20)
    def height(value=nil)
      make_constraint(:height, :equal, value)
    end

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
    def last_baseline(value=nil)
      make_constraint(:last_baseline, :equal, value)
    end

    # min_last_baseline.equals(other_view)
    # min_last_baseline(other_view)
    # min_last_baseline(20)
    def min_last_baseline(value=nil)
      make_constraint(:last_baseline, :gte, value)
    end

    # max_last_baseline.equals(other_view)
    # max_last_baseline(other_view)
    # max_last_baseline(20)
    def max_last_baseline(value=nil)
      make_constraint(:last_baseline, :lte, value)
    end
    # first_baseline.equals(other_view)
    # first_baseline(other_view)
    # first_baseline(20)
    def first_baseline(value=nil)
      make_constraint(:first_baseline, :equal, value)
    end

    # min_first_baseline.equals(other_view)
    # min_first_baseline(other_view)
    # min_first_baseline(20)
    def min_first_baseline(value=nil)
      make_constraint(:first_baseline, :gte, value)
    end

    # max_first_baseline.equals(other_view)
    # max_first_baseline(other_view)
    # max_first_baseline(20)
    def max_first_baseline(value=nil)
      make_constraint(:first_baseline, :lte, value)
    end
    # left_margin.equals(other_view)
    # left_margin(other_view)
    # left_margin(20)
    # left_margin(other_view)
    def left_margin(value=nil)
      make_constraint(:left_margin, :equal, value)
    end

    # min_left_margin.equals(other_view)
    # min_left_margin(other_view)
    # min_left_margin(20)
    def min_left_margin(value=nil)
      make_constraint(:left_margin, :gte, value)
    end

    # max_left_margin.equals(other_view)
    # max_left_margin(other_view)
    # max_left_margin(20)
    def max_left_margin(value=nil)
      make_constraint(:left_margin, :lte, value)
    end
    # right_margin.equals(other_view)
    # right_margin(other_view)
    # right_margin(20)
    def right_margin(value=nil)
      make_constraint(:right_margin, :equal, value)
    end

    # min_right_margin.equals(other_view)
    # min_right_margin(other_view)
    # min_right_margin(20)
    def min_right_margin(value=nil)
      make_constraint(:right_margin, :gte, value)
    end

    # max_right_margin.equals(other_view)
    # max_right_margin(other_view)
    # max_right_margin(20)
    def max_right_margin(value=nil)
      make_constraint(:right_margin, :lte, value)
    end
    # top_margin.equals(other_view)
    # top_margin(other_view)
    # top_margin(20)
    def top_margin(value=nil)
      make_constraint(:top_margin, :equal, value)
    end

    # min_top_margin.equals(other_view)
    # min_top_margin(other_view)
    # min_top_margin(20)
    def min_top_margin(value=nil)
      make_constraint(:top_margin, :gte, value)
    end

    # max_top_margin.equals(other_view)
    # max_top_margin(other_view)
    # max_top_margin(20)
    def max_top_margin(value=nil)
      make_constraint(:top_margin, :lte, value)
    end
    # bottom_margin.equals(other_view)
    # bottom_margin(other_view)
    # bottom_margin(20)
    def bottom_margin(value=nil)
      make_constraint(:bottom_margin, :equal, value)
    end

    # min_bottom_margin.equals(other_view)
    # min_bottom_margin(other_view)
    # min_bottom_margin(20)
    def min_bottom_margin(value=nil)
      make_constraint(:bottom_margin, :gte, value)
    end

    # max_bottom_margin.equals(other_view)
    # max_bottom_margin(other_view)
    # max_bottom_margin(20)
    def max_bottom_margin(value=nil)
      make_constraint(:bottom_margin, :lte, value)
    end
    # leading_margin.equals(other_view)
    # leading_margin(other_view)
    # leading_margin(20)
    def leading_margin(value=nil)
      make_constraint(:leading_margin, :equal, value)
    end

    # min_leading_margin.equals(other_view)
    # min_leading_margin(other_view)
    # min_leading_margin(20)
    def min_leading_margin(value=nil)
      make_constraint(:leading_margin, :gte, value)
    end

    # max_leading_margin.equals(other_view)
    # max_leading_margin(other_view)
    # max_leading_margin(20)
    def max_leading_margin(value=nil)
      make_constraint(:leading_margin, :lte, value)
    end
    # trailing_margin.equals(other_view)
    # trailing_margin(other_view)
    # trailing_margin(20)
    def trailing_margin(value=nil)
      make_constraint(:trailing_margin, :equal, value)
    end

    # min_trailing_margin.equals(other_view)
    # min_trailing_margin(other_view)
    # min_trailing_margin(20)
    def min_trailing_margin(value=nil)
      make_constraint(:trailing_margin, :gte, value)
    end

    # max_trailing_margin.equals(other_view)
    # max_trailing_margin(other_view)
    # max_trailing_margin(20)
    def max_trailing_margin(value=nil)
      make_constraint(:trailing_margin, :lte, value)
    end
    # center_x_within_margins.equals(other_view)
    # center_x_within_margins(other_view)
    # center_x_within_margins(20)
    def center_x_within_margins(value=nil)
      make_constraint(:center_x_within_margins, :equal, value)
    end

    # min_center_x_within_margins.equals(other_view)
    # min_center_x_within_margins(other_view)
    # min_center_x_within_margins(20)
    def min_center_x_within_margins(value=nil)
      make_constraint(:center_x_within_margins, :gte, value)
    end

    # max_center_x_within_margins.equals(other_view)
    # max_center_x_within_margins(other_view)
    # max_center_x_within_margins(20)
    def max_center_x_within_margins(value=nil)
      make_constraint(:center_x_within_margins, :lte, value)
    end
    # center_y_within_margins.equals(other_view)
    # center_y_within_margins(other_view)
    # center_y_within_margins(20)
    def center_y_within_margins(value=nil)
      make_constraint(:center_y_within_margins, :equal, value)
    end

    # min_center_y_within_margins.equals(other_view)
    # min_center_y_within_margins(other_view)
    # min_center_y_within_margins(20)
    def min_center_y_within_margins(value=nil)
      make_constraint(:center_y_within_margins, :gte, value)
    end

    # max_center_y_within_margins.equals(other_view)
    # max_center_y_within_margins(other_view)
    # max_center_y_within_margins(20)
    def max_center_y_within_margins(value=nil)
      make_constraint(:center_y_within_margins, :lte, value)
    end

    # size.equals(other_view)
    # size(other_view)
    def size(value=nil)
      make_constraint(:size, :equal, value, SizeConstraint)
    end

    # min_size.equals(other_view)
    # min_size(other_view)
    def min_size(value=nil)
      make_constraint(:size, :gte, value, SizeConstraint)
    end

    # max_size.equals(other_view)
    # max_size(other_view)
    def max_size(value=nil)
      make_constraint(:size, :lte, value, SizeConstraint)
    end

    # center.equals(other_view)
    # center(other_view)
    def center(value=nil)
      make_constraint([:center_x, :center_y], :equal, value, PointConstraint)
    end

    # min_center.equals(other_view)
    # min_center(other_view)
    def min_center(value=nil)
      make_constraint([:center_x, :center_y], :gte, value, PointConstraint)
    end

    # max_center.equals(other_view)
    # max_center(other_view)
    def max_center(value=nil)
      make_constraint([:center_x, :center_y], :lte, value, PointConstraint)
    end

    # top_left.equals(other_view)
    # top_left(other_view)
    def top_left(value=nil)
      make_constraint([:left, :top], :equal, value, PointConstraint)
    end

    # min_top_left.equals(other_view)
    # min_top_left(other_view)
    def min_top_left(value=nil)
      make_constraint([:left, :top], :gte, value, PointConstraint)
    end

    # max_top_left.equals(other_view)
    # max_top_left(other_view)
    def max_top_left(value=nil)
      make_constraint([:left, :top], :lte, value, PointConstraint)
    end

    # top_right.equals(other_view)
    # top_right(other_view)
    def top_right(value=nil)
      make_constraint([:right, :top], :equal, value, PointConstraint)
    end

    # min_top_right.equals(other_view)
    # min_top_right(other_view)
    def min_top_right(value=nil)
      make_constraint([:right, :top], :gte, value, PointConstraint)
    end

    # max_top_right.equals(other_view)
    # max_top_right(other_view)
    def max_top_right(value=nil)
      make_constraint([:right, :top], :lte, value, PointConstraint)
    end

    # bottom_left.equals(other_view)
    # bottom_left(other_view)
    def bottom_left(value=nil)
      make_constraint([:left, :bottom], :equal, value, PointConstraint)
    end

    # min_bottom_left.equals(other_view)
    # min_bottom_left(other_view)
    def min_bottom_left(value=nil)
      make_constraint([:left, :bottom], :gte, value, PointConstraint)
    end

    # max_bottom_left.equals(other_view)
    # max_bottom_left(other_view)
    def max_bottom_left(value=nil)
      make_constraint([:left, :bottom], :lte, value, PointConstraint)
    end

    # bottom_right.equals(other_view)
    # bottom_right(other_view)
    def bottom_right(value=nil)
      make_constraint([:right, :bottom], :equal, value, PointConstraint)
    end

    # min_bottom_right.equals(other_view)
    # min_bottom_right(other_view)
    def min_bottom_right(value=nil)
      make_constraint([:right, :bottom], :gte, value, PointConstraint)
    end

    # max_bottom_right.equals(other_view)
    # max_bottom_right(other_view)
    def max_bottom_right(value=nil)
      make_constraint([:right, :bottom], :lte, value, PointConstraint)
    end

    # above(other_view)
    def above(view)
      constraint = Constraint.new(pop_target_view, :bottom, :equal, view, :top)
      add constraint
      return constraint
    end

    # below(other_view)
    def below(view)
      constraint = Constraint.new(pop_target_view, :top, :equal, view, :bottom)
      add constraint
      return constraint
    end

    # before(other_view)
    def before(view)
      constraint = Constraint.new(pop_target_view, :trailing, :equal, view, :leading)
      add constraint
      return constraint
    end

    # after(other_view)
    def after(view)
      constraint = Constraint.new(pop_target_view, :leading, :equal, view, :trailing)
      add constraint
      return constraint
    end

  private

    def pop_target_view
      view = @next_view || @view
      @next_view = nil
      view
    end

    def make_constraint(attribute, relationship, value=nil, _ConstraintClass=Constraint)
      constraint = _ConstraintClass.new(pop_target_view, attribute, relationship)

      if value
        constraint.equals(value)
      end
      add constraint
      constraint
    end

  end
end
