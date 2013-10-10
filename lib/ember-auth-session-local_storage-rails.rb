require 'rails'
require 'ember/auth/session/local_storage/source'
require 'ember/auth/session/local_storage/rails/version'
require 'ember/auth/session/local_storage/rails/engine'

module Ember
  module Auth
    module Session
      module LocalStorage
        module Rails
          class Railtie < ::Rails::Railtie
            initializer 'ember-auth.session.local-storage.setup-vendor', :group => :all do |app|
              app.assets.append_path \
                File.expand_path('..', ::Ember::Auth::Session::LocalStorage::Source.bundled_path)
            end
          end
        end
      end
    end
  end
end
