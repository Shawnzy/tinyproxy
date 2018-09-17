# tinyproxy
https://tech.tiq.cc/2012/06/installing-tinyproxy-on-linuxdebian/  
https://gist.github.com/webinista/812c20247a6c21e639ce

### AWS
**Create a new Instance on AWS Aberta**
1. Click Launch Instance
2. Ubuntu Server 16.04 LTS (HVM), SSD Volume Type - ami-04169656fea786776 >> Select
3. (default) General purpose t2.micro >> Next: Configure Instance Details
4. Network: (default) vpc-62f53707; Enable termination protection X >> Next: Add Storage
5. (default) 8 GiB >> Next: Add Tags
6. Next: Configure Security Group
7. Select an existing security group > Name: launch-wizard-32 >> Review and Launch
8. Launch
9. Select your key pair >> Launch Instance
10. git clone https://github.com/Shawnzy/tinyproxy.git
11. sudo tinyproxy/setup.sh
12. Change your computer's proxy settings ->  
                                           **Proxy IP**: IP of AWS machine;   
                                           **Port**: 8888
