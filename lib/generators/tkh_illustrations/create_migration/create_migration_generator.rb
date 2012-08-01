require 'rails/generators/migration'
 
module TkhIllustrations
  module Generators
    class CreateMigrationGenerator < ::Rails::Generators::Base
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
 
      def copy_migrations
        puts 'creating illustration migration'
        migration_template "create_illustrations.rb", "db/migrate/create_illustrations.rb"
      end
 
    end
  end
end