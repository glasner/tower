# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "tower"
  s.version = "0.1.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jordan Glasner"]
  s.date = "2012-02-17"
  s.description = "Put those models on a diet! Move your app logic to app/services"
  s.email = "jordan@digitalignition.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "examples/delayed_job/.gitignore",
    "examples/delayed_job/Gemfile",
    "examples/delayed_job/README",
    "examples/delayed_job/Rakefile",
    "examples/delayed_job/app/controllers/application_controller.rb",
    "examples/delayed_job/app/helpers/application_helper.rb",
    "examples/delayed_job/app/views/layouts/application.html.erb",
    "examples/delayed_job/config.ru",
    "examples/delayed_job/config/application.rb",
    "examples/delayed_job/config/boot.rb",
    "examples/delayed_job/config/database.yml",
    "examples/delayed_job/config/environment.rb",
    "examples/delayed_job/config/environments/development.rb",
    "examples/delayed_job/config/environments/production.rb",
    "examples/delayed_job/config/environments/test.rb",
    "examples/delayed_job/config/initializers/backtrace_silencers.rb",
    "examples/delayed_job/config/initializers/inflections.rb",
    "examples/delayed_job/config/initializers/mime_types.rb",
    "examples/delayed_job/config/initializers/secret_token.rb",
    "examples/delayed_job/config/initializers/session_store.rb",
    "examples/delayed_job/config/locales/en.yml",
    "examples/delayed_job/config/routes.rb",
    "examples/delayed_job/db/seeds.rb",
    "examples/delayed_job/lib/tasks/.gitkeep",
    "examples/delayed_job/public/404.html",
    "examples/delayed_job/public/422.html",
    "examples/delayed_job/public/500.html",
    "examples/delayed_job/public/favicon.ico",
    "examples/delayed_job/public/images/rails.png",
    "examples/delayed_job/public/index.html",
    "examples/delayed_job/public/javascripts/.gitkeep",
    "examples/delayed_job/public/javascripts/application.js",
    "examples/delayed_job/public/robots.txt",
    "examples/delayed_job/public/stylesheets/.gitkeep",
    "examples/delayed_job/script/rails",
    "examples/delayed_job/vendor/plugins/.gitkeep",
    "lib/tower.rb",
    "lib/tower/engine.rb",
    "lib/tower/enqueue.rb",
    "lib/tower/queue.rb",
    "lib/tower/queue/with_delayed_job.rb",
    "lib/tower/queue/with_resque.rb",
    "lib/tower/service.rb",
    "spec/spec_helper.rb",
    "spec/tower/engine_spec.rb",
    "spec/tower/queue/with_delayed_job_spec.rb",
    "spec/tower/queue_spec.rb",
    "spec/tower/service_spec.rb",
    "spec/tower_spec.rb",
    "tower.gemspec"
  ]
  s.homepage = "http://github.com/glasner/tower"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.10"
  s.summary = "Adds /app/services to Rails"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, ["= 3.0.7"])
      s.add_development_dependency(%q<rspec>, ["~> 2.3.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<rails>, ["= 3.0.7"])
      s.add_dependency(%q<rspec>, ["~> 2.3.0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, ["= 3.0.7"])
    s.add_dependency(%q<rspec>, ["~> 2.3.0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end

