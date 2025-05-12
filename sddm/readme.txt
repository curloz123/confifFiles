1 Install dependencies

sddm >= 0.21.0, qt6 >= 6.8, qt6-svg >= 6.8, qt6-virtualkeyboard >= 6.8, qt6-multimedia >= 6.8

2 Clone this repository

sudo git clone -b master --depth 1 https://github.com/keyitdev/sddm-astronaut-theme.git /usr/share/sddm/themes/sddm-astronaut-theme

3 Copy fonts to /usr/share/fonts/

sudo cp -r /usr/share/sddm/themes/sddm-astronaut-theme/Fonts/* /usr/share/fonts/

4 Edit /etc/sddm.conf

echo "[Theme]
Current=sddm-astronaut-theme" | sudo tee /etc/sddm.conf

5 Edit /etc/sddm.conf.d/virtualkbd.conf

echo "[General]
InputMethod=qtvirtualkeyboard" | sudo tee /etc/sddm.conf.d/virtualkbd.conf

6 You can select theme by editing metadata (/usr/share/sddm/themes/sddm-astronaut-theme/metadata.desktop).

Just edit this line:

ConfigFile=Themes/astronaut.conf

all Credits to @Keyitdev from github, i use his theme

