class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC/Fs1hbfNAuk4hzVd0AH/W6SpquRFRgKXKsuixTvW6AuMqCgmMvvvPbFM2+axOQl4nKw3IQwxWyoJDxUnA/uyjKxgk/YVohK8BZLvzJD36jsT6lnn7jM+l2GqBQCIpSV2hQcJqzIoe1RcJdExC7/f0zd6fOtvKuQEFB5yRRrub1hITZtYDBPzD1PU61RZVfEiJumPmWR5+8bxYbE9Z/bQhXAHf60G5gqqaRhkDcCF0Jbcnrrv4VQwbsex9M/VJ7ZgyqzKDOZbLvv2ESbdTb2nWOoW3vxn6j3RtdWHluOlo0JznX9xMoV1nUcmOKp/vfO2zVJ5iuf2uq1qcLRvgU86t',
	}  
}
