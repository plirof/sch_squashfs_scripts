env CHROMIUM_FLAGS="--ppapi-flash-path=/usr/share/iron_flash/extensions/libpepflashplayer.so --ppapi-flash-version=29.0.0.171"
xhost +
mkdir -p /mnt/home/downloads_linux/.data/iron_flash
mkdir -p /mnt/home/downloads_linux/.cache/iron_flash
sudo chown root /usr/share/iron_flash/chrome-sandbox
sudo chmod 4755 /usr/share/iron_flash/chrome-sandbox
sudo chmod 4755 /usr/share/iron_flash/chrome-wrapper
su - puppy -c "/usr/share/iron_flash/chrome-wrapper $1 --disable-translate --user-data-dir=/mnt/home/downloads_linux/.data/iron_flash --disk-cache-dir=/mnt/home/downloads_linux/.cache/iron_flash  --ppapi-flash-path=/usr/share/iron_flash/extensions/libpepflashplayer.so --ppapi-flash-version=29.0.0.171 --always-authorize-plugins"

