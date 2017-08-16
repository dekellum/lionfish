# -*- ruby -*-

ROOT_DIR = File.expand_path( '..', __FILE__ )

desc "systemctl enable socket/service"
task :enable do
  sh <<-SH
    systemctl --user enable #{ROOT_DIR}/systemd/lionfish.socket
    systemctl --user enable #{ROOT_DIR}/systemd/lionfish.service
  SH
end

[ :status, :start, :stop, :disable ].each do |t|
  desc "systemctl #{t} socket/service"
  task t do
    ignore = if [ :status, :stop ].include?( t )
               "|| true"
             else
               ""
             end
    sh <<-SH
      systemctl --user #{t} lionfish.{socket,service} #{ignore}
    SH
  end
end

desc "systemctl restart service"
task :restart do
  sh <<-SH
    systemctl --user restart lionfish.service
  SH
end
