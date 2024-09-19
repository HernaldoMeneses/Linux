#!/bin/bash
sudo apt update
sudo apt install tor

sudo service tor start

sudo systemctl start tor


curl --socks5-hostname 127.0.0.1:9050 http://check.torproject.org
