module MotionKit
  module_function

  def base_view_class
    UIView
  end

  def insert(new_view, above: subview, target: target)
    target.insertSubview(new_view, aboveSubview: subview)
  end

  def insert(new_view, below: subview, target: target)
    target.insertSubview(new_view, belowSubview: subview)
  end

  def insert(new_view, at: index, target: target)
    target.insertSubview(new_view, atIndex: index)
  end

end
