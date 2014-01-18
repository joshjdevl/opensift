sudo docker run -d -p 22 joshjdevl/opensift /usr/sbin/sshd -D > pid
sudo docker port `cat pid` 22 > port



