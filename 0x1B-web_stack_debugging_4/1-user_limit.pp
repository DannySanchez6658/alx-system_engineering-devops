# Enable the user to login and open files without error.

# Increase hard file limit for Holberton user.
exec { 'increase-hard-file-limit-for-holberton-user':
  command => 'sed -i "/holberton hard/s/5/50000/" /etc/security/limits.conf',
  path    => '/usr/local/bin:/usr/bin:/bin',
  onlyif  => '/bin/grep -q "^holberton.*hard.*nofile" /etc/security/limits.conf',
}

# Increase soft file limit for Holberton user.
exec { 'increase-soft-file-limit-for-holberton-user':
  command => 'sed -i "/holberton soft/s/4/50000/" /etc/security/limits.conf',
  path    => '/usr/local/bin:/usr/bin:/bin',
  onlyif  => '/bin/grep -q "^holberton.*soft.*nofile" /etc/security/limits.conf',
}