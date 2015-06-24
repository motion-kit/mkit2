module MotionKit

  module LayoutInstanceMethods

    def add(klass_or_instance, *names, &block)
      new_view = MotionKit.to_instance(klass_or_instance)

      names.each do |name|
        attempt_to_style(new_view, name)
      end

      target.addSubview(new_view)

      if block
        run_in_context(new_view, &block)
      end

      new_view
    end

    def mk_constraints(&block)
    end

    def auto_layout(add_to_view=nil, &block)
      add_to_view ||= target
      if add_to_view.is_a?(Symbol)
        add_to_view = self.get(add_to_view)
      end
      add_to_view.setTranslatesAutoresizingMaskIntoConstraints(false)

      auto_layout_factory = AutoLayoutFactory.new(add_to_view)
      run_in_context(auto_layout_factory, &block)

      defer do

      end
    end

  end

end
