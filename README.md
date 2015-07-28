# MotionKit

Encourage a greater separation of code than the common "MVC" model.

[Example](#example)

    # Gemfile
    gem 'motion-kit', '~> 2.0.0'

    # Manually
    gem install motion-kit

*MotionKit* classes are used to create and manage views.  Instead of having a
view layer that is strongly bound to a **Controller** or **Activity** class,
*MotionKit* introduces a `Layout` class, which you use to add, update, and
animate your views.  The **Controller** only concerns itself with application
state, and the **Layout** is in charge of keeping the views up-to-date.

In other words, the **Layout** sits between your controller and views.
**Views**, then, are truly "dumb" classes (they just show text or an image,
respond to generic user events), and Layouts translate the application
state into view updates, and user events into application events

For instance, imagine a Timer application.  One label (elapsed time), and one
button (start/stop the timer).

- User taps the button -> the Layout translates this to a "start" event.  The
  controller creates a timer and sends the elapsed time to the layout.
- Elapsed time changes -> Layout updates the `elapsed_time` label with the
  formatted time in seconds.

**Controller**: has the timer and calculates the elapsed time.  The controller
is responsible for storing/retrieving application state, and passing on relevant
info to the layout.

**Layout**: updates the views and pass events from the views to the controller,
in the form of application events.

This model is also vaguely known as **MVVM**, Model-View-ViewModel, though there
are subtle differences in MotionKit's implementation and the standard model.

# What is MotionKit good at

- View layout:
    - on any supported OS you can use MotionKit's constraints
    - on iOS and OS X you can use frames, AutoLayout
    - on Android you can set layout parameters
- Send and receive events to the layout
- Binding layout and view properties
- View manipulation
- View styling

MotionKit was also designed with "composability" in mind.  There is no plugin
system, instead it is encouraged that you use off-the-shelf gems and compose
your own library of styling/animation/view-related gems.  Also, if you want to
use the RubyMotionQuery gem as your stylesheet and animation library, we have
native support for that, too!  When you include the `MotionKit::RMQ` module in
your layout classes, you can easily use RMQ for styling and animation, and
MotionKit for events and binding.

Let's dive in!

# Example

This first example is just to give you a quick taste.  See the SignUpLayout
for a full-blown example with comments.

```ruby
class TimerLayout < MK::Layout
  accessor :time
  view :start_button  # will call `mk_layout` if @start_button is not set

  def mk_layout
    add UILabel, :timer_label  # also creates @timer_label
    add UIButton, :start_button

    mk_constraints do |c|
      inner_margin = 20

      c.mid_x.of(:timer_label).equals(:root)
      c.bottom.of(:timer_label).equals(:root).minus(inner_margin)

      c.mid_x.of(:start_button).equals(:root)
      c.bottom.of(:start_button).equals(:timer_label).plus(inner_margin)
    end
  end

  def timer_label_style(lbl)
    lbl.text = '0s'
    bind(lbl, :text).to(:time) { |val| (val || '0s') }
  end

  def start_button_style(btn)
    btn.setTitle('Start', forState: UIControlStateNormal)
  end

  def reset_timer
    lbl.text = '0s'
    start_button.setTitle('Stop', forState: UIControlStateNormal)
  end

  def stop_timer
    start_button.setTitle('Start', forState: UIControlStateNormal)
  end

end
```

This layout is ready for *viewing*, but it won't be interesting until we hook up
the timer button.

The proper "MotionKit-way" of doing this is to emit an event from the layout,
and the Controller will listen for that event.

```ruby
def start_button_style(btn)
  btn.setTitle('Start', forState: UIControlStateNormal)
  btn.addTarget(self, action: 'start_button_pressed', forControlEvents: UIControlEventTouchUpInside)
end

def start_button_pressed
  self.trigger(:start_button_pressed)
end


class TimerController < UIViewController

  def viewDidLoad
    super
    @layout = TimerLayout.new
    @layout.on(:start_button_pressed, forward_to: self)
    @layout.on(:start_button_pressed).forward_to(self)
  end

  def start_button_pressed
    if @timer
      stop_button_pressed
      return
    end
    @layout.reset_timer

    @start_time = NSDate.new
    @timer = NSTimer.scheduledTimerWithTimeInterval(0.05, target: self, selector: 'tick', userInfo: nil, repeats: true)
  end

  def tick
    delta = NSDate.new.timeIntervalSince1970 - @start_time.timeIntervalSince1970
    delta = delta.round(1)
    @layout.time = "#{delta}s"
  end

  def stop_button_pressed
    @layout.stop_timer
    @timer.invalidate
    @timer = nil
  end

end
```

Finally, we need to update the layout when `time=` is called.  We will use a
feature of MotionKit called "binding".

```ruby
def timer_label_style(lbl)
  lbl.text = '0s'
  bind(lbl, :text).to(:time) { |val| (val || '0s') }
end
```

Running this app will show a label (that says "0s") and a "Start" button.  Tap
"Start" and the timer will begin.  Tap "Stop" to stop the timer.

# Styling

- MotionKit Stylesheets (crossplatform)
- RMQ Stylesheets (iOS only)

You can move your `_style` methods out of your `Layout`, into a `Stylesheet`
if you want.  This will make your Layout even lighter.  Ideally, the `Layout` is
focused on frames, animation, binding, and events.  Everything else (font,
color, etc) can be in a stylesheet.  If you use RMQ, you can take advantage of
its **Stylers**!

Using RMQ, you have an important choice to make when it comes to positioning
your views: whether to use the MotionKit constraint system, or RMQ's grid
system.  It's up to you!

```ruby
class TimerLayout < MK::Layout
  accessor :time
  view :start_button

  stylesheet TimerStylesheet

  define :inner_margin, 20

  def mk_layout
    add UILabel, :timer_label
    add UIButton, :start_button
  end
end

class TimerStylesheet < MK::Stylesheet

  def timer_label(lbl)
    # lbl is a UILabel instance
  end

end

class TimerStylesheet < RubyMotionQuery::Stylesheet

  def timer_label(st)
    # st is a RubyMotionQuery Styler
  end

end
```

# Constraints

```ruby
class SignUpLayout < MK::Layout

  def mk_layout
    # this is the default name.  on table cells, the root is often renamed to
    # :cell, or sometimes :view for containers.  whatever you like - I stick
    # with :root everywhere
    root_name :root

    # adding views is straightforward
    add UIImageView, :logo
    add UILabel, :title_label

    # add a container, and subviews
    add UIView, :email_input do
      # these get added to the :email_input container
      add UILabel, :email_label
      add UITextField, :email_field
      add UILabel, :email_error
      add UILabel, :email_message
    end

    # adding layouts - since Layout extends UIView, they are added just like any
    # other subview.
    add InputFieldLayout, :username_input
    add InputFieldLayout, :password_input

    # now let's set our constraints.  this layout has the logo and title_label
    # in the upper-left corner.
    mk_constraints do |c|
      # there is no context, so the 'target' (:logo) must be explicit.  we will
      # just set the width and height to a constant: 25pt
      c.set(:logo, [:width, :height]).to(25)
      # here are other ways to do this:
      ## using `width`/`height` helpers.  use `of` to assign the view.  You can
      ## use `equals` or `==`
      c.width.of(:logo) == 25
      c.height.of(:logo) == 25
      ## using `size` helper
      c.size.of(:logo) == [25, 25]
      c.size.of(:logo) == { w: 25, h: 25 }  # or { width: 25, height: 25 }

      # now let's set the logo position.  We will set it relative to the
      # upper-left corner of the layout.  This calls for the `align` method,
      # it's a major workhorse.  Most of the helpers delegate to this method.
      #
      # Since we want a margin between the logo and the container, we will use
      # the `plus` method to add an offset.
      #
      # `plus` is relative... it always moves the constraint towards the inside
      # of the frame, or "away" from the specified side (in this case it moves
      # the upper-left corner to the right and down, away from the top/left
      # sides)
      c.align(:logo, [:left, :top]).to(:root).plus(8)
      # we can, set alignments one at a time, which allows us to specifiy
      # *which* side of :root we want to align to.
      c.align(:logo, :left).to(:root, :left).plus(8)
      c.align(:logo, :top).to(:root, :top).plus(8)

      # or, this can also be done using `inset`, which in turn delegates to
      # `align`.
      c.inset(:logo, top: 8, left: 8).from(:root)
      # or using individual constraint helpers `left` and `top`, which work just
      # like the `width/height` helpers.
      c.left.of(:logo).equals(:root, :left).plus(8)
      c.top.of(:logo).equals(:root, :top).plus(8)

      # setting a context is useful to group constraints and decrease repition
      c.with(:title_label) do
        # let's get the height out of the way.  UILabel has a calculated height
        # that we can use.  Just set `:height` to `:natural`.
        c.set(:height).to(:natural)

        # we want the label to be next to the logo, so align its left side with
        # the right side of the logo, plus a margin.
        #
        # Instead of using the magic number `8`, let's use a 'defined' number
        c.define :margin, 8
        c.align(:left).to(:logo, :right).plus(:margin)
        # and, of course, there are many ways to skin this cat:
        c.left.equals(:logo, :right).plus(:margin)
        # notice the `from` method; `of` or `target` refers to the view we are
        # positioning, and `from` or `to` refer to the 'anchor'.
        c.to_the_right.from(:logo).plus(:margin)
        c.to_the_right.from(:logo).plus(:margin)

        # to set the width, we could either use the :natural setting, which
        # would stretch our text to be as wide as it needs to be.  That's
        # probably fine, since or title is a known value, but let's be thorough.
        #
        # In a real-world setting, the label text might be variable, and we
        # don't want it to grow so large that it is wider than the container
        # view.  Let's pin it to the right side of the container:
        c.align(:right).to(:root).plus(:margin)
        c.inset(right: :margin).from(:root)

        # we want the label to be vertically centered with the logo.  we *could*
        # use the fact that our logo is 25pt high, but that's brittle.  instead
        # we'll use a variable constraint.  if we make the logo bigger, our
        # label will move, too
        c.align(:mid_y).to(:logo)

        # the order of operations is very relevant here.  Unlike Apple's
        # AutoLayout system, which is expressive and not-really-deterministic,
        # the MotionKit system is imperative.  When you create a constraint, the
        # size/location of that constraint is calculated immediately.  If we set
        # the `:mid_y` constraint *before* we set the size, it might not be
        # centered.  The effect would be that the height would grow, so the top
        # of the view would not change... this might actually be desirable!
      end

      # the email_input should be below the label *and* the logo; realistically
      # the logo will have a lower max_y, but it's conceivable that the title
      # label has so much text that it is taller than the logo - we can handle
      # that scenario!
      c.with(:email_input) do
        # the `at_least` modifier will not affect the constraint if the value is
        # already greater than the calculated value.
        c.top.at_least.below(:logo).plus(:margin)
        c.top.at_least.below(:title_label).plus(:margin)

        c.inset(left: :margin, right: :margin).from(:root)

        # we want the height of the email_input to be based on its subviews, so
        # we need to calculate those next
        c.with(:email_label) do
          c.set([:top, :left, :right]).to(:email_input).plus(:margin)
          c.height == :natural
        end
        c.with(:email_field) do
          c.set([:left, :right]).to(:email_label)
          # the pattern of aligning two sides is so common there is a helper for
          # it: use `align(:vertically)` to set the :left and :right sides, and
          # `align(:horizontally)` to set the :top and :bottom
          c.align(:vertically).to(:email_label)
          c.top.below(:email_label).plus(4)
          c.height == 50
        end
        # if email_error is empty, we want it to collapse so that it doesn't
        # take up any space.  if it *does* have height, we want it to be 8pt
        # below the email_field.
        c.with(:email_error) do
          c.align(:vertically).to(:email_label)
          c.height == :natural
          # if height is 0, the block is ignored.  Use the `collapsed` helper to
          # assign constraints when the height is 0
          c.height.collapsable do
            c.top.below(:email_field).plus(4)
          end.collapsed do
            c.top.equals(:email_field, :bottom)
          end
          # here's another way to do this; create a constraint, and assign a
          # margin in the collapsable block.
          top_constraint = c.top.below(:email_field)
          c.height.collapsable do
            top_constraint.plus(4)
          end
        end
        # same thing with email_message; below email_error, possibly collapsed
        c.with(:email_message) do
          c.align(:vertically).to(:email_label)
          top_constraint = c.top.below(:email_field)
          c.height.collapsable do
            top_constraint.plus(4)
          end
        end

        # remember the height of the email_input!  now that the subviews are
        # laid out, we can set the height of the container.
        c.set(:email_input, :bottom).to(:email_message, :bottom).plus(:margin)


        # The InputFieldLayout is itself a Layout, and so it will handle its own
        # internal layout, and can usually set a natural size, too.
        #
        # Next feature!  The username_input and password_input constraints are
        # identical.  We just need to align them below the previous view.  Let's
        # create a rule!  You pass in view names, and you can later `apply` that
        # rule, passing in the appropriate views.
        r = Constraint.rule(:prev) do |c|
          c.top.below(:prev)
          c.align(:vertically).to(:prev)
        end
        # if you name the rule, you can create this rule globally and fetch it
        # like so:
        Constraint.rule(:above).named(:place_below) do |c| ... end
        r = Constraint.rule_named(:place_below)

        c.with(:username_input) do
          r.apply(prev: :email_input)
        end
        c.with(:password_input) do
          r.apply(prev: :username_input)
        end
      end

      # Constraints are pretty cool, but you should also familiarize yourself
      # with the MotionKit layout classes: LinearLayout (orientation defaults to
      # :vertical), GridLayout (defaults to 3-wide, vertical layout)
      add LinearLayout do |lyt|
        # lyt.orientation = :horizontal
        add InputFieldLayout, :email_input
        add InputFieldLayout, :username_input
        add InputFieldLayout, :password_input
      end
    end
  end

end


class InputFieldLayout < MK::Layout
  # accessor's are bindable, and automatically result in "reflowing" the layout
  # when the value changes.
  accessor :title
  accessor :text

  def mk_layout
    add UILabel, :label
    add UITextField, :field
    add UILabel, :error
    add UILabel, :message
  end

  def label_layout(lbl)
    bind(lbl, :text).to(:text) { |val| (val || '').upcase }
    # on_change(:text) { |val| get(:label).text = (val || '').upcase }

    # the constraints target is already set to :label
    mk_constraints do |c|
      c.align([:left, :top, :right]).to(:root).plus(8)
      c.inset(top: 8, left: 8, right: 8).from(:root)
    end
  end

  def field_layout(v)
    bind(lbl, :text).to(:title) { |t| t.to_s }
    # on_change(:title) { |val| get(:field).text = val.to_s }

    mk_constraints do |c|
      c.below(:label).plus(8)
      c.align(:left).to(:label)
      c.align(:right).to(:label)
    end
  end

  def error_layout(lbl)
  end

  def message_layout(lbl)
  end

end
```

# Lazy Layouts

You might have a layout that is dependent on some initialization.  If that is
the case, you can place your layout code in the `mk_lazy_layout` method, and
when you are ready to create your layout, call `build!`.  This method works
identically to the `mk_layout` method (in fact, *both* methods will be called,
since the default behavior will always be assumed).

By default, the layout is created during initialization.
