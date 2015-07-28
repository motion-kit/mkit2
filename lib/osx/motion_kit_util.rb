module MotionKit
  module_function

  def base_view_class
    NSView
  end

  def insert(new_view, above: subview, target: target)
    target.addSubview(new_view, positioned: NSWindowAbove, relativeTo: subview)
  end

  def insert(new_view, below: subview, target: target)
    target.addSubview(new_view, positioned: NSWindowBelow, relativeTo: subview)
  end

  def insert(new_view, at: index, target: target)
    if index >= target.subviews.count
      subview = target.subviews.last
      positioned = NSWindowAbove
    else
      subview = target.subviews[index]
      positioned = NSWindowBelow
    end
    target.addSubview(new_view, positioned: positioned, relativeTo: subview)
  end

end
