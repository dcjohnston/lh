#define path so we dont need to use fully
# qualified paths for all commands
Exec {
  path => [ "/bin/", "/sbin/", "/usr/bin/", "usr/sbin"]
}

include lh
