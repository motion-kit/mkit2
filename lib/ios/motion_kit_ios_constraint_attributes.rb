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

      last_baseline: NSLayoutAttributeLastBaseline,
      first_baseline: NSLayoutAttributeFirstBaseline,
      left_margin: NSLayoutAttributeLeftMargin,
      right_margin: NSLayoutAttributeRightMargin,
      top_margin: NSLayoutAttributeTopMargin,
      bottom_margin: NSLayoutAttributeBottomMargin,
      leading_margin: NSLayoutAttributeLeadingMargin,
      trailing_margin: NSLayoutAttributeTrailingMargin,
      center_x_within_margins: NSLayoutAttributeCenterXWithinMargins,
      center_y_within_margins: NSLayoutAttributeCenterYWithinMargins,
    }
  end
end
