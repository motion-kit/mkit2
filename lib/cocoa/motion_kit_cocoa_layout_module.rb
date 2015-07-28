module MotionKit

  module LayoutInstanceMethods

    def create(klass_or_instance, *names, &block)
      new_view = MotionKit.to_instance(klass_or_instance)

      names.each do |name|
        attempt_to_style(new_view, name)
      end

      if block
        run_in_context(new_view, &block)
      end

      new_view
    end

    def add(klass_or_instance, *names, &block)
      current_target = target
      return create(klass_or_instance, *names) do |new_view|
        current_target.addSubview(new_view)

        if block
          block.call(new_view)
        end
      end
    end

    # insert(View, :id, above: view)
    # insert(View, :id, below: view)
    # insert(View, above: view, names: [:view_id, :label])
    # insert(View, index: 0)
    def insert(klass_or_instance, name_or_opts={}, opts={}, &block)
      if name_or_opts.is_a?(NSDictionary)
        opts = name_or_opts
      elsif name_or_opts.is_a?(NSString)
        opts = opts.merge(names: [name_or_opts])
      else
        opts = opts.merge(names: name_or_opts)
      end

      above = opts[:above]
      below = opts[:below]
      names = opts[:names]

      current_target = target
      return create(klass_or_instance, *names) do |new_view|
        if above
          MotionKit.insert(new_view, above: above, target: current_target)
        elsif below
          MotionKit.insert(new_view, below: below, target: current_target)
        else
          index = opts[:index] || 0
          MotionKit.insert(new_view, at: index, target: current_target)
        end

        if block
          block.call(new_view)
        end
      end
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
