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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDUgoJdmHqRXydvGYoRtdZHC9tl0A5iQATYLA77JlhB/3Eb+qeg5Pa5Mh3Rt7G7khcu5p8GcLkaDl0UvQP3/zOKjgl57tUr+ct7XzaLlng5JICkQLLRfwBCtNXIwcpwfL1LLP+f8ryRNBuyrzPJ8IZXsWSMTtlKufW8d3/FO1KETyCXR9Hzaax+NGagYFemJoFwfavXCP5rxl9aiNGpR53qXkH+60fRe3sDurE828uKpQevuuzxthMt+Amz2tsvIVJ8lAazXTnC7rnufV+a9lM1CCpNkcwHXi6ieAlGTCJFfaiV3j22LA4sasOsB1oydcZXWkOJpuxx1G+G7yjC2O1v',
	}  
}
