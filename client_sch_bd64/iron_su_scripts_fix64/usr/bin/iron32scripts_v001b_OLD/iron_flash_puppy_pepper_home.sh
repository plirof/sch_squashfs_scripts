env CHROMIUM_FLAGS="--ppapi-flash-path=/usr/share/iron_flash/extensions/libpepflashplayer.so --ppapi-flash-version=31.0.0.108"
xhost +
mkdir -p /mnt/home/downloads_linux/.data/iron_flash
mkdir -p /mnt/home/downloads_linux/.cache/iron_flash
sudo chmod 4777 /mnt/home/downloads_linux/.data/iron_flash
sudo chmod 4777 /mnt/home/downloads_linux/.cache/iron_flash
sudo chown root /usr/share/iron_flash/chrome-sandbox
sudo chmod 4755 /usr/share/iron_flash/chrome-sandbox
sudo chmod 4755 /usr/share/iron_flash/chrome-wrapper
#su - puppy -c "/usr/share/iron_flash/chrome-wrapper $@ --disable-translate --user-data-dir=/mnt/home/downloads_linux/.data/iron_flash --disk-cache-dir=/mnt/home/downloads_linux/.cache/iron_flash  --ppapi-flash-path=/usr/share/iron_flash/extensions/libpepflashplayer.so --ppapi-flash-version=31.0.0.108 --always-authorize-plugins"
#su - puppy -c "/usr/share/iron_flash/chrome-wrapper $@ --disable-translate --user-data-dir=/mnt/home/downloads_linux/.data/iron_flash --disk-cache-dir=/mnt/home/downloads_linux/.cache/iron_flash  --ppapi-flash-path=/usr/share/iron_flash/extensions/libpepflashplayer.so --ppapi-flash-version=31.0.0.108 --always-authorize-plugins"

AAA="/usr/share/iron_flash/chrome-wrapper $@ --disable-translate --user-data-dir=/mnt/home/downloads_linux/.data/iron_flash --disk-cache-dir=/mnt/home/downloads_linux/.cache/iron_flash  --ppapi-flash-path=/usr/share/iron_flash/extensions/libpepflashplayer.so --ppapi-flash-version=31.0.0.108 --always-authorize-plugins "
sudo -u puppy $AAA


