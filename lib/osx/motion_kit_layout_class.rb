# @provides MotionKit::Layout
# @requires MotionKit::LayoutClassMethods
# @requires MotionKit::LayoutInstanceMethods
module MotionKit
  module_function

  def to_instance(klass_or_instance)
    if klass_or_instance.is_a?(Class)
      klass_or_instance.new
    else
      klass_or_instance
    end
  end

end


module MotionKit

  class Layout < NSView
    include LayoutInstanceMethods

    def initWithFrame(frame)
      super
      mk_layout
      self
    end

  end
end


module MotionKit

  class WindowLayout < NSWindow
    include LayoutInstanceMethods

    def initWithContentRect(frame, styleMask: mask, backing: backing, defer: defer, screen: screen)
      super
      mk_layout
      self
    end

    def initWithContentRect(frame, styleMask: mask, backing: backing, defer: defer)
      super
      mk_layout
      self
    end

    def default_target
      contentView
    end

  end
end
