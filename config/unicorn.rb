app_path = Dir.pwd
pid_file = "#{app_path}/tmp/pids/unicorn.pid"
working_directory = app_path

stderr_path "log/unicorn.log"
stdout_path "log/unicorn.log"

worker_processes 4
timeout 20
preload_app true

listen "#{app_path}/tmp/sockets/unicorn.sock", :backlog => 64
listen 3000
pid "#{pid_file}"