class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.applicationFrame)
    @window.makeKeyAndVisible
    @blue_view = UIView.alloc.initWithFrame(CGRect.new([10, 10], [100, 100]))
    @blue_view.backgroundColor = UIColor.blueColor
    @window.addSubview(@blue_view)

    # button
    @add_button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @add_button.setTitle("Add", forState:UIControlStateNormal)
    @add_button.sizeToFit
    @add_button.frame = CGRect.new(get_center_position(@add_button), @add_button.frame.size)
    @window.addSubview(@add_button)
    true
  end

  def get_center_position(element)
    [
      @window.frame.size.width/2 - element.frame.size.width/2,
      @window.frame.size.height/2 - element.frame.size.height
    ]
  end
end
