# @provides MotionKit::StylingModule
module MotionKit

  module StylingModule

    def defer(&block)
      @deferred_blocks ||= []
      @deferred_blocks << block
    end

    def call_deferred_blocks(recur=5)
      if @deferred_blocks
        blocks = @deferred_blocks
        @deferred_blocks = nil
        blocks.each(&:call)
        call_deferred_blocks(recur - 1) unless recur == 0
      end
    end

    def reapply(&block)
      @reapply_blocks ||= []
      @reapply_blocks << [block.weak!, target]
    end

    def reapply!
      if @reapply_blocks
        @reapply_blocks.each do |block, target|
          block.call(target)
        end
      end
      if @stylesheet
        @stylesheet.reapply!
      end
      call_deferred_blocks
    end

    def attempt_to_style(new_view, name)
      if name
        add_view_named(new_view, name)

        style_method = "#{name}_style"
        if respond_to?(style_method)
          run_in_context(new_view) do
            self.send(style_method, new_view)
          end
        elsif @stylesheet && @stylesheet.respond_to?(style_method)
          @stylesheet.target = new_view
          @stylesheet.send(style_method, new_view)
        end
      end
    end

  end

end
