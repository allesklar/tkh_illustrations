require 'rails/generators/migration'

module TkhIllustrations
  module Generators
    class CreateOrUpdateMigrationsGenerator < ::Rails::Generators::Base
      include Rails::Generators::Migration
      source_root File.expand_path('../templates', __FILE__)
      desc "add the migration"
      def self.next_migration_number(path)
        unless @prev_migration_nr
          @prev_migration_nr = Time.now.utc.strftime("%Y%m%d%H%M%S").to_i
        else
          @prev_migration_nr += 1
        end
        @prev_migration_nr.to_s
      end

      def create_or_update_migrations
        puts 'Creating the illustrations table'
        migration_template "create_illustrations.rb", "db/migrate/create_illustrations.rb"
        puts 'Adding translation of name attribute for Globalize3'
        migration_template "add_translation_of_name_to_illustrations.rb", "db/migrate/add_translation_of_name_to_illustrations.rb"
        puts 'Creating the headers table'
        migration_template "create_headers.rb", "db/migrate/create_headers.rb"
        puts 'Creating the downloads table'
        migration_template "create_downloads.rb", "db/migrate/create_downloads.rb"
      end

    end
  end
end
