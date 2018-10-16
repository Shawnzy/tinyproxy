# tinyproxy
https://tech.tiq.cc/2012/06/installing-tinyproxy-on-linuxdebian/  
https://gist.github.com/webinista/812c20247a6c21e639ce

### AWS
**Create a new Instance on AWS Aberta**
1. Click the Launch Instance button.

2. Choose Ubuntu Server 18.04 LTS (HVM), SSD Volume Type. This isn't strictly necessary. If you choose another OS, check its documentation for how to install new packages.

3. On the Choose an Instance Type screen, select t2.micro. It's Free Tier eligible.

4. Click the Next: ... buttons until you reach the Configure Security Group screen.

5. On the Configure Security Group screen: 
      - Select Create a new security group. 
      - On the first line, verify that Type is SSH, Protocol is TCP and the Port Range is 22. Under Source, select "My IP"              from the drop down menu. This restrict incoming connections to those from your IP address.
      - Click the Add Rule button.
      - Select Custom TCP Rule. Make sure the Protocol is TCP, and the Port Range is 8888. Under Source, select My IP from              the drop down menu. This opens Port 8888.
      - Click Review and Launch, and on the following screen, click Launch.

6. Make sure Use an existing key pair is selected, or create a new key. If you are using an existing pair, check the acknolwedgement box.

7. Go to View Instances.

8. Select the instance you just created. Click the Connect button above the list of instances.

9. Using a terminal window, run the SSH command listed, e.g. ssh -i /path/to/yourkey.pem ubuntu@xxx.xxx.xxxx, where xxx.xxx.xxxx is the IP of your EC2 or VPC instance. The first time, SSH will tell you The authenticity of host 'xxx.xxx.xxxx (xxx.xxx.xxxx)' can't be established. Continue anyway.

10. git clone https://github.com/Shawnzy/tinyproxy.git

11. Edit tinyproxy/tinyproxy.conf on line~214 to Allow your IP  
        Allow XXX.XX.XXX.XXX/32

11. sudo ~/tinyproxy/setup.sh

12. Change your computer's proxy settings ->  
                                           **Proxy IP**: IP of AWS machine;   
                                           **Port**: 8888
