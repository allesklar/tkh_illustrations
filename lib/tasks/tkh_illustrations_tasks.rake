namespace :tkh_illustrations do
  
  desc "Create migration and locale files"
  task :install do
    system 'rails g tkh_illustrations:create_or_update_migrations'
    system 'rails g tkh_illustrations:create_or_update_locales -f'
  end
  
  desc "Update files. Skip existing migrations. Force overwrite locales"
  task :update do
    system 'rails g tkh_illustrations:create_or_update_migrations -s'
    system 'rails g tkh_illustrations:create_or_update_locales -f'
  end

end