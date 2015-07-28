Migration

- `Layout` now extends `NSView` or `UIView`
- `def layout` is now `def mk_layout` (layout is an NSView method)
- `constraints do .. end` is now `auto_layout do .. end` (constraints is a
  `UIView` and `NSView` method)
- the `origin` constraint is gone, because it is ambiguous on osx vs ios.  use
  `top_left` instead
- added cell classes `MK::TableCellLayout`, `MK::CollectionCellLayout`
- `reapply!` is `restyle!`.  An error is produced so you can update your code.
- removed `initial` (just put the code in the `_style` method, `reapply` still exists)
