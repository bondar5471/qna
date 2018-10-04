# config valid for current version and patch releases of Capistrano
lock "~> 3.11.0"

set :application, "QnA"
set :repo_url, "git@github.com:bondar5471/qna.git"

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, "/home/deploy/qna"
set :deploy_user, "deploy"

# Default value for :linked_files is []
append :linked_files, "config/database.yml", "config/private_pub.yml", ".env"
# Default value for linked_dirs is []
append :linked_dirs, "bin", "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system", "public/uploads","vendot/bundle"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure
