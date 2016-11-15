# Due to upstream puppet3 support breakage, we need to pin the NTP module
# See LP#1633713
export DIB_REPOREF_puppetlabs_ntp=${DIB_REPOREF_puppetlabs_ntp:-'4.2.x'}
