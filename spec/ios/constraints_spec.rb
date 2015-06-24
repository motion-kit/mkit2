class ConstraintsTestLayout < MK::Layout

  def mk_layout
    add UIButton, :button
    add UIView, :container do |view|
      add UILabel, :label
      add UIControl
    end

    mk_constraints do
    end
  end

  def button_style(btn)
    btn.setTitle('btn', forState: UIControlStateNormal)
  end

  def label_style(lbl)
    lbl.text = 'lbl'
  end

end


describe ConstraintsTestLayout do
end
