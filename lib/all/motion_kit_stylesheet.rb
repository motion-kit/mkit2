# @provides MotionKit::Stylesheet
# @requires MotionKit::StylingModule
module MotionKit
  class Stylesheet
    attr_accessor :target
    include StylingModule
  end
end
