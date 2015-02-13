worker_processes 4
preload_app true
timeout 3000

listen File.expand_path("./tmp/sockets/unicorn.sock"), :backlog => 64
pid File.expand_path("./tmp/pids/atlas.pid")
