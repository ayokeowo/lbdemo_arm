sudo apt-get update
sudo apt-get install -y apache2
sudo systemctl start apache2
sudo systemctl enable apache2
echo "<h1>Azure Virtual Machine for LB Demo</h1>" > /var/www/html/index.html
curl -H Metadata:true --noproxy "*" "http://169.254.169.254/metadata/instance/network/interface/0/ipv4/ipAddress/0/privateIpAddress/?api-version=2017-08-01&format=text">> /var/www/html/index.html
