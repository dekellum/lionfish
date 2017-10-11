# -*- ruby -*-

ROOT_DIR = File.expand_path( '..', __FILE__ )

desc "systemctl enable service"
task :enable do
  sh <<-SH
    systemctl --user enable #{ROOT_DIR}/systemd/lionfish.service
  SH
end

[ :status, :start, :stop, :disable, :restart ].each do |t|
  desc "systemctl #{t} service"
  task t do
    ignore = if [ :status, :stop ].include?( t )
               "|| true"
             else
               ""
             end
    sh <<-SH
      systemctl --user #{t} lionfish.service #{ignore}
    SH
  end
end
