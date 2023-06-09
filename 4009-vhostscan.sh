#/bin/bash
# Depends on python3-levenshtein
sudo apt install -y python3-levenshtein

mkdir -p /opt/web/vhostscan 2>/dev/null
wget https://github.com/codingo/VHostScan/archive/master.zip -O /tmp/vhostscan.zip

last=$(pwd)
cd /tmp && unzip vhostscan.zip && rm vhostscan.zip
cd /opt/web/vhostscan && mv /tmp/VHostScan-master/* -t /opt/web/vhostscan 
sed -i 's/numpy==1.12.0/numpy/g' requirements.txt 1>/dev/null 2>/dev/null && sed -i 's/numpy==1.12.0/numpy/g' setup.py 1>/dev/null 2>/dev/null
sed -i 's/pandas==0.19.2/pandas/g' requirements.txt 1>/dev/null 2>/dev/null && sed -i 's/pandas==0.19.2/pandas/g' setup.py 1>/dev/null 2>/dev/null
pip3 --no-cache-dir install -r requirements.txt
cd "$last"
