external_url 'https://gitlab.dgital.pro'
nginx['listen_port'] = 80
nginx['listen_https'] = false
nginx['proxy_set_headers'] = {
  "X-Forwarded-Proto" => "https",
  "X-Forwarded-Ssl" => "on"
}
gitlab_rails['gitlab_shell_ssh_port'] = 22
gitlab_rails['smtp_enable'] = false
