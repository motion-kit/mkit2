Migration

- big one first: there are no helpers.  so `btn.title` won't work.

  :-|

  and `snake_case` methods no longer work.

  :-|

- the styling DSL is gone.  style methods now accept the view as an argument,
  and you just call Cocoa/CocoaTouch methods on the view.

  ```ruby
  # change this:
  def label_style
    text 'Hi!'
  end

  # to this:
  def label_style(lbl)
    lbl.text = 'Hi!'
  end
  ```

  Why this change?  1. Simplicity.  So much confusion and complication around
  the DSL, only for a minor bump in readability (and a huge loss of
  comprehensible code)

- `Layout` now extends `NSView` or `UIView`.  This means you no longer ask the
  layout for its view, the layout IS the view.

- `def layout` is now `def mk_layout` (because `layout` is an `NSView` method,
  and layouts are views, so...)

- `constraints do .. end` is now `auto_layout do |c|.. end` (`constraints` is a
  `UIView` and `NSView` method).  Use the `c` (or whatever you call it) variable
  to generate constraints.  The DSL hasn't changed, but you need to use this
  instance directly.

  ```ruby
  auto_layout do |c|
    c.width == :superview
    c.height == 10
  end
  ```

- the `origin` constraint is gone, because it is ambiguous on osx vs ios.  use
  `top_left` instead.

- added cell classes `MK::TableCellLayout`, `MK::CollectionCellLayout`

- `reapply!` is `restyle!`.  An error is produced so you can update your code.

- removed `initial` (just put the code in the `_style` method, `reapply` still exists)
