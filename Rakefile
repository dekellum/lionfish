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
    sh <<-SH
      systemctl --user #{t} lionfish.service
    SH
  end
end
