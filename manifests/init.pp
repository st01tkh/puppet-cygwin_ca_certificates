# == Class: cygwin_ca_certificates
#
# Updates CA Certificates
#
# === Parameters
#
# === Variables
#
# === Examples
#
#  class { 'cygwin_ca_certificates': }
#
# === Authors
#
# st01tkh <st01tkh@gmail.com>
#
# === Copyright
#
# Copyright 2016 st01tkh
#
class cygwin_ca_certificates {
  if ($operatingsystem == 'windows') {
      $cygwinroot = get_cygwin_root()
      if ($cygwinroot) {
          $sysroot = env("SYSTEMROOT")
          $sys32 = file_join_win(["${sysroot}", "System32"])
          $cygwin_bin = file_join_win(["${cygwinroot}", "bin"])
          $cygwin_bash = file_join_win(["${cygwin_bin}", "bash.exe"])
          exec {'apt-cyg_install_ca-certificates':
            path => ["$sysroot", "$sys32", "${cygwin_bin}", ],
            cwd => "${cygwinroot}",
            command => "${cygwin_bash} -c \"/usr/local/bin/apt-cyg install ca-certificates",
          } ->
          exec {'git_config_system_ca-bundle.trust.crt':
            path => ["$sysroot", "$sys32", "${cygwin_bin}", ],
            cwd => "${cygwinroot}",
            command => "${cygwin_bash} -c \"/usr/bin/git config --system http.sslcainfo /etc/pki/ca-trust/extracted/openssl/ca-bundle.trust.crt",
          }
      } else {
          notify {"cygwin root does not exist": }
      }
  } else {
      notify {"$operatingsystem is not supported": }
  }

}
