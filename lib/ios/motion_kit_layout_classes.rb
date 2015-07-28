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

  class Layout < UIView
    include LayoutInstanceMethods

    def initWithFrame(frame)
      super
      mk_init
      self
    end

  end

  class TableCellLayout < UITableViewCell
    include LayoutInstanceMethods

    def initWithStyle(style, reuseIdentifier: identifier)
      super
      mk_layout
      self
    end

    def default_target
      contentView
    end

  end

  class CollectionCellLayout < UICollectionViewCell
    include LayoutInstanceMethods

    def initWithFrame(frame)
      super
      mk_layout
      self
    end

    def default_target
      contentView
    end

  end

end
