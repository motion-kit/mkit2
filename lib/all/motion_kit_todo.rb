module MotionKit
  module LayoutInstanceMethods

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

      MotionKit.nearest(from_view) { |test_view| search.include?(test_view) }
    end

  end
end
