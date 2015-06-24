Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'motion-kit'

  app.specs_dir = 'spec/android/'
  app.files.delete_if { |file| file =~ %r{app/} && file !~ %r{app/android/} }

  DBT.analyze(app)
end
