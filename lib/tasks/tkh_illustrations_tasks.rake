namespace :tkh_illustrations do
  desc "Create migration and locale files"
  task :install do
    system 'rails g tkh_illustrations:create_migration'
    system 'rails g tkh_illustrations:create_or_update_locales'
  end
end