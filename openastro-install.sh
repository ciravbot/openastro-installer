#!/bin/bash
clear
echo
echo "Installing Python dependencies..."
echo
sudo apt-get install python-gtk2
sudo apt-get install python-dateutil
sudo apt-get install python-rsvg
sudo apt-get install python-cairo
sudo apt-get install python-tz
sudo apt-get install python-dev
clear
echo
echo "Downloading Pyswisseph..."
curl -L "http://www.openastro.org/download.php?file=source&type=pyswisseph" | tar xz 
echo
echo "Installing Pyswisseph..."
cd pyswisseph-2.00.00-2 && sudo python setup.py install
cd openastro.org-1.1.48 && sudo python setup.py install
echo
echo "Downloading Openastro..."
curl -L "http://www.openastro.org/download.php?file=source&type=openastro" | tar xz 
echo
echo "Installing Openastro..."
cd openastro.org-1.1.48 && sudo python setup.py install
echo
echo "Downloading Openastro_Data..."
curl -L "http://www.openastro.org/download.php?file=source&type=data" | tar xz 
echo
echo "Installing Openastro_Data..."
cd openastro.org-data-1.6 && sudo python setup.py install
echo
echo
echo "All finished, type openastro to run."
echo
echo
