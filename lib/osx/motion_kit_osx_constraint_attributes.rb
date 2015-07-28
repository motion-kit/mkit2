# @requires MotionKit::Constraint
# @provides MotionKit::Constraint::Attributes
module MotionKit
  class Constraint
    Attributes = {
      none: NSLayoutAttributeNotAnAttribute,
      left: NSLayoutAttributeLeft,
      right: NSLayoutAttributeRight,
      top: NSLayoutAttributeTop,
      bottom: NSLayoutAttributeBottom,
      leading: NSLayoutAttributeLeading,
      trailing: NSLayoutAttributeTrailing,
      width: NSLayoutAttributeWidth,
      height: NSLayoutAttributeHeight,
      center_x: NSLayoutAttributeCenterX,
      center_y: NSLayoutAttributeCenterY,
      baseline: NSLayoutAttributeBaseline,
    }
  end
end
