sudo apt install -y vlc
sudo cp splash.service /etc/systemd/system/
sudo sed -i "s/userid/$USER/" /etc/systemd/system/splash.service
sudo systemctl enable splash.service
cmdline=$(cat /boot/cmdline.txt)
sudo cp /boot/cmdline.txt /boot/cmdline.txt.bak
echo "$cmdline quiet vt.global_cursor_default=0 plymouth.ignore-serial-consoles" | sudo tee /boot/cmdline.txt
