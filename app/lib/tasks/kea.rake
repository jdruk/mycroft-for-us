namespace :kea do
  desc "Create migration of the kea isc 1.5"
  task migration: :environment do
    database = ActiveRecord::Base.connection_config[:database]
    username = ActiveRecord::Base.connection_config[:username]
    password = ActiveRecord::Base.connection_config[:password]
    host     = ActiveRecord::Base.connection_config[:host]
    port     = ActiveRecord::Base.connection_config[:port]

    command = "kea-admin lease-init pgsql -u #{username} -p #{password} -n #{database}"
    system command
  end

end
