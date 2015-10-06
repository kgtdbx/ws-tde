Data Masking and Subsetting Workshop
2/6/2015 Image Version 1.0

This is an unsupported image to used in accordance with the OTN Developer License http://www.oracle.com/technetwork/licenses/standard-license-152015.html

THE IMAGE IS PROVIDED AS IS AND IS USED AT YOUR OWN RISK
This image is built on-site and is not pre-packaged.  
THE IMAGE IS PROVIDED AS IS AND IS USED AT YOUR OWN RISK

Developer License Overview
--------------------------
All software downloads are free, and most come with a Developer License that allows you to use full versions of the products at no charge while developing and prototyping your applications, or for strictly self-educational purposes. (Unless otherwise specified, our technical support organization will not provide technical support, phone support, or updates to you for the programs licensed under this agreement.) You can buy products with full-use licenses at any time from the online Store or from your sales representative.

There are four homes installed on this image all set from /home/oracle/Desktop/.workshopconfig/setenv.sh
-----------------------------------------------------------
Clusterware/Grid 				
Enterprise Manager Database
Enterprise Manager Middleware
Data Masking Database

Quick note on VirtualBox Networking
-----------------------------------
Please refer to VirtualBox networking documentation for full detail.
NAT and Host-Only networks will often encounter error if configured or restarted after an image is running.
In most cases it is best to configure the Host-Only or NAT network prior to importing the image.
Reboot the entire machine host if there are errors, or the network is configured correctly, but still not working.
In most cases Host to VM communication will not work if on VPN network without appropriate forwarding and routes configured.

eth3 must be off during OMS startup otherwise name resolution or security errors will show in logs and OMS startup will fail.
Simply disable eth3 with "ifdown eth3" and "emctl start oms" again.  If OMS fails to start again, check the OMS log directories for more info.

Passwords
---------
Manager_1 is used for all Virtual Host Image, Enterprise Manager, and database users.

Host Names
----------
All configured host names are in /etc/hosts
Feel free to modify, but understand that names are aliased in the host file.   The first record found in is used as the A record, thus may alias any new name setup.  The base image name is workshop.oracle.com.  
This is not a valid name outside the image and will not resolve Oracle's Name Servers. It is setup for this workshop image only, not for name resolution outside the image.

Network Adapters
----------------
Multiple adapters are configured strictly for logical convenience.
Host-only network adapters are configured on the 192.168.0.0/24 network.  See image for IPs.  One adapter is left set to bridged-network which means it will setup internet access automatically if host network allows DHCP.  Simply disable the bridged-network to stop outside access.
The host-only network should allow a terminal from host machine into the VM if working correctly.  Command to list host-only networks [vboxmanage list hostonlyifs] eth3 is disabled by default.  eth3 is configured on physical adapter 2.  To enable internet access, enable eth3.
If bridged network is not functioning, switch eth3's adapter to NAT within the VirtualBox Virtual Image Network Settings panel and restart eth3.

Enterprise Manager and Database Restart
---------------------------------------
Since this is a virtual machine, EM will often timeout on startup due to system delays.  To prevent this, EM Autostart is turned off.  EM is automatically configured to restart via the /etc/init.d/gcstartup service that reads from /etc/oragchomelist.  Detailed information regarding Basic Enterprise Manager setup can be found here: http://docs.oracle.com/cd/E24628_01/install.121/e24089/getstrtd_things_to_know.htm#BACEBBBJ 

As delivered the image does not autostart enterprise manager.  The /etc/oragchomelist is renamed to NoAutoStart-oragchomelist.  Double-click the AutoStartEM launcher to rename this file and autostart EM on next boot.  All databases are also not automatically started.  Once a database is started, Oracle restart will assume control on restart if the system is shutdown without shutting down the instance first.  



