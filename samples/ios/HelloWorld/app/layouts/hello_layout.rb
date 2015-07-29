class HelloLayout < MotionKit::Layout

  def mk_layout
    add(UILabel, :label)
    add(UILabel, :footer)
  end

  def label_color
    UIColor.blueColor
  end

  def default_label_style(label)
    label.textColor = label_color
  end

  def label_style(label)
    default_label_style(label)
    label.text = 'Hello World!'
    label.backgroundColor = UIColor.whiteColor

    auto_layout do |c|
      c.top.equals(:superview).plus(20)
      c.left.equals(:superview).plus(20)
    end
  end

  def footer_style(label)
    default_label_style(label)
    label.text = 'brought to you by MotionKit'
    label.backgroundColor = UIColor.lightGrayColor

    auto_layout do |c|
      c.bottom.equals(:superview).minus(20)
      c.right.equals(:superview).minus(20)
    end
  end

end
