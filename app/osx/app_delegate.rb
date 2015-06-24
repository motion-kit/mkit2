class AppDelegate
  def applicationDidFinishLaunching(notification)
    buildMenu
    buildWindow
  end

  def buildWindow
    @mainWindow = NSWindow.alloc.initWithContentRect([[240, 180], [480, 360]],
      styleMask: NSTitledWindowMask|NSClosableWindowMask|NSMiniaturizableWindowMask|NSResizableWindowMask,
      backing: NSBackingStoreBuffered,
      defer: false)
    @mainWindow.title = NSBundle.mainBundle.infoDictionary['CFBundleName']
    @mainWindow.orderFrontRegardless

    return if RUBYMOTION_ENV == 'test'
    # view = NSView.alloc.initWithFrame([[0, 0,], [480, 360]])
    frame = [[0, 0,], [480, 360]]
    # view = AppTestLayout.alloc.initWithFrame(frame)
    view = AppTestLayout.new
    view.frame = frame

    viewLayer = CALayer.layer
    viewLayer.backgroundColor = CGColorCreateGenericRGB(0.0, 0.0, 0.0, 0.4)
    view.wantsLayer = true
    view.layer = viewLayer

    @mainWindow.contentView.addSubview(view)
  end
end


class AppTestLayout < MK::Layout

  def mk_layout
    add NSButton, :button
    add NSView, :container do |view|
      add NSTextField, :label
      add NSSearchField
    end
  end

  def button_style(btn)
    btn.stringValue = 'btn'
  end

  def label_style(lbl)
    lbl.bezeled = false
    lbl.drawsBackground = false
    lbl.editable = false
    lbl.selectable = false
    lbl.stringValue = 'lbl'
  end

end
