include nginx

# redirect from https://domain.com to https://10.10.10.10
nginx::resource::server { 'https://domain.com':
  listen_port => 443,
  proxy       => 'https://10.10.10.10',
}

# redirect https://domain.com/resoure2 to https://20.20.20.20
nginx::resource::location{'/resoure2':
    proxy => 'https://20.20.20.20' ,
    server => 'https://domain.com',