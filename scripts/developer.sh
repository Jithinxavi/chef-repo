knife ec2 server create 'role[production]' 'role[base]' 'role[developer]'  -S ec2-keypair -I ~/.ssh/ec2-keypair.pem -x ubuntu -G default,firewall -i ami-2d4aa444
