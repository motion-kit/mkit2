class HelloViewController < UIViewController

  def loadView
    self.view = HelloLayout.new
  end

end
