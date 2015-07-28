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

    def view(name)
      raise "not yet implemented"
    end

    def accessor(name)
      raise "not yet implemented"
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

    # Search for a sibling: the next sibling that has the given id
    def next(element_id)
      self.next(element_id, from: target)
    end

    def next(element_id, from: from_view)
      search = all(element_id)
      if search.nil? || search.empty?
        return nil
      end

      if from_view.is_a?(String) || from_view.is_a?(Symbol)
        from_view = self.get(from_view)
      end

      searching = false
      found = nil
      MotionKit.siblings(from_view).each do |sibling|
        if sibling == from_view
          searching = true
        elsif searching && search.include?(sibling)
          found = sibling
          break
        end
      end
      return found
    end

    # Search for a sibling: the previous sibling that has the given id
    def prev(element_id)
      prev(element_id, from: target)
    end

    def prev(element_id, from: from_view)
      search = all(element_id)
      if search.nil? || search.empty?
        return nil
      end

      if from_view.is_a?(String) || from_view.is_a?(Symbol)
        from_view = self.get(from_view)
      end

      found = nil
      MotionKit.siblings(from_view).each do |sibling|
        if sibling == from_view
          break
        elsif search.include?(sibling)
          # keep searching; prev should find the *closest* matching view
          found = sibling
        end
      end
      return found
    end

    # This searches for the "nearest" view with a given id.  First, all child
    # views are checked.  Then the search goes up to the parent view, and its
    # child views are checked.  This means *any* view that is in the parent
    # view's hierarchy is considered closer than a view in a grandparent's
    # hierarchy.  This is a "depth-first" search, so any subview that contains
    # a view with the element id
    #
    # A--B--C--D*   Starting at D, E is closer than F, because D&E are siblings.
    #  \  \  \-E    But F, G and H are closer than A or I, because they share a
    #   \  \-F--G   closer *parent* (B).  The logic is, "B" is a container, and
    #    \-I  \-H   all views in that container are in a closer family.
    def nearest(element_id)
      nearest(element_id, from: target)
    end

    def nearest(element_id, from: from_view)
      search = all(element_id)
      if search.nil? || search.empty?
        return nil
      end

      if from_view.is_a?(NSString)
        from_view = self.get(from_view)
      end

      if from_view.is_a?(ConstraintsTarget)
        from_view = from_view.view
      end

      MotionKit.nearest(from_view) { |test_view| search.include?(test_view) }
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
