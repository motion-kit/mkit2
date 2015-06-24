Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'motion-kit'

  app.specs_dir = 'spec/ios/'
  app.files.delete_if { |file| file =~ %r{app/} && file !~ %r{app/ios/} }

  DBT.analyze(app)

end
