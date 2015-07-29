# @provides MotionKit::LayoutClassMethods
# @provides MotionKit::LayoutInstanceMethods
# @requires MotionKit::StylingModule
module MotionKit
  module LayoutClassMethods
    def stylesheet(klass_or_instance=nil)
      if klass_or_instance
        @stylesheet_class = klass_or_instance
      else
        @stylesheet_class
      end
    end

    # This is an `attr_reader`-like method that also calls `build!` if the
    # @view doesn't exist, and so you can use it to refer to views that are
    # assigned to ivars in your `layout` method.
    #
    # @example
    #     class MyLayout < MK::Layout
    #       view :label
    #       view :login_button
    #
    #       def mk_layout
    #         # if element id and attr name match, no need to assign to ivar
    #         add UILabel, :label
    #         # if they don't match you must assign.
    #         @login_button = add UIButton, :button
    #       end
    #
    #     end
    # You can also set multiple views in a single line.
    #
    # @example
    #     class MyLayout < MK::Layout
    #       view :label, :login_button
    #     end
    def view(*names)
      names.each do |name|
        ivar_name = "@#{name}"
        define_method(name) do
          unless instance_variable_get(ivar_name)
            view = self.get(name)
            unless view
              build! unless @view
              view = instance_variable_get(ivar_name) || self.get(name)
            end
            self.send("#{name}=", view)
            return view
          end
          return instance_variable_get(ivar_name)
        end
        # KVO compliance
        attr_writer name
      end
    end

    def accessor(name)
      raise "not yet implemented.  but this feature will be very awesome."
    end
  end

  module LayoutInstanceMethods
    def self.included(base)
      base.extend(LayoutClassMethods)
    end
    include StylingModule

    def mk_init
      if self.class.stylesheet
        @stylesheet = MotionKit.to_instance(self.class.stylesheet)
      end

      mk_layout
      call_deferred_blocks
    end

    def stylesheet
      @stylesheet
    end

    def mk_layout
    end

    def mk_lazy_layout
    end

    def build!
      if !@built_lazily
        @built_lazily = true
        mk_lazy_layout
        call_deferred_blocks
      end
    end

    def named_views
      @named_views ||= {}
    end

    # Retrieves a view by its element id.  If there are multiple views with the
    # same name, the view that is returned is not defined.  At this time,
    # though, it will always be the first view with that name.
    #
    # See `first`
    def get(name)
      first(name)
    end

    # Retrieves a view by its element id.  This will return the *first* view
    # with this element_id in the tree, where *first* means the first object
    # that was added with that name.
    def first(name)
      all(name).first
    end

    # Retrieves a view by its element id.  This will return the *last* view with
    # this element_id in the tree, where *last* means the last object that was
    # added with that name.
    def last(name)
      all(name).last
    end

    # Returns all the elements with a given element_id
    def all(name)
      named_views[name] || []
    end

    def get_view(name)
      puts "no need to use 'get_view', because Layouts *are* views"
      get(name)
    end

    def last_view(name)
      puts "no need to use 'last_view', because Layouts *are* views"
      last(name)
    end

    # Returns the ‘N’th element with a given element_id, where "‘N’th" is passed
    # in as `index`
    def nth(element_id, index)
      all(element_id)[index]
    end

    def all_views(name)
      puts "no need to use 'all_views', because Layouts *are* views"
      all(name)
    end

    def add_view_named(view, name)
      named_views[name] ||= []
      named_views[name] << view
    end

    def default_target
      self
    end

    def target
      @target || default_target
    end

    def run_in_context(view, &block)
      prev_target = @target
      @target = view
      block.call(view)
      @target = prev_target
    end

  end
end
