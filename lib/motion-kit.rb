unless defined?(Motion::Project::Config)
  raise "The MotionKit gem must be required within a RubyMotion project Rakefile."
end


require 'dbt'


Motion::Project::App.setup do |app|
  core_folder = File.join(File.dirname(__FILE__), 'all')
  cocoa_folder = File.join(File.dirname(__FILE__), 'cocoa')

  folders = [core_folder]
  platform = app.respond_to?(:template) ? app.template : :ios
  if platform.to_s.start_with?('ios')
    platform_name = 'ios'
    folders << cocoa_folder
  elsif platform.to_s.start_with?('osx')
    platform_name = 'osx'
    folders << cocoa_folder
  elsif platform.to_s.start_with?('android')
    platform_name = 'android'
  end

  platform_folder = File.join(File.dirname(__FILE__), platform_name)
  folders << platform_folder
  unless File.exists? platform_folder
    raise "Sorry, the platform #{platform.inspect} (aka #{platform_name}) is not supported by MotionKit"
  end

  # scans app.files until it finds app/ (the default)
  # if found, it inserts just before those files, otherwise it will insert to
  # the end of the list
  insert_point = app.files.find_index { |file| file =~ /^(?:\.\/)?app\// } || 0

  files = []
  folders.each do |folder|
    Dir.glob(File.join(folder, '**/*.rb')).each do |file|
      files << file
    end
  end
  files.each do |file|
    app.files.insert(insert_point, file)
  end

  DBT.analyze(app)
end
