module Tower
  class Engine < Rails::Engine
    initialize 'setup services directory' do |app|
      app.config.autoload_paths += %W(#{app.config.root}/app/services)
    end
  end
end