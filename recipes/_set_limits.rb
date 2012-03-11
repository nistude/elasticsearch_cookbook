# Increase open file limits
execute 'adjust open file limits for elasticsearch' do
  command "echo 'elasticsearch - nofile #{node['elasticsearch']['limits']['nofile']}'  >> /etc/security/limits.conf"
  not_if "grep '^elasticsearch.*-.*nofile' /etc/security/limits.conf"

  notifies :restart, resources(:service => 'elasticsearch')
end

execute 'adjust max locked-in-memory address space for elasticsearch' do
  command "echo 'elasticsearch - memlock #{node['elasticsearch']['limits']['memlock']}' >> /etc/security/limits.conf"
  not_if "grep '^elasticsearch.*-.*memlock' /etc/security/limits.conf"

  notifies :restart, resources(:service => 'elasticsearch')
end

execute 'activate limits for elasticsearch' do
  command "echo 'session required pam_limits.so' >> /etc/pam.d/su"
  not_if "grep '^session.*required.*pam_limits.so' /etc/pam.d/su"

  notifies :restart, resources(:service => 'elasticsearch')
end
