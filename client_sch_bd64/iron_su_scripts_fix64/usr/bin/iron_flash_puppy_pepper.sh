#env CHROMIUM_FLAGS="--ppapi-flash-path=/usr/share/iron_flash/extensions/libpepflashplayer.so --ppapi-flash-version=31.0.0.108"
xhost +
sudo chown root /usr/share/iron_flash/chrome-sandbox
sudo chmod 4755 /usr/share/iron_flash/chrome-sandbox
sudo chmod 4755 /usr/share/iron_flash/chrome-wrapper
#su - puppy -c "/usr/share/iron_flash/chrome-wrapper $@ --disable-translate --user-data-dir=/home/puppy/iron_flash_puppy_user_data_dir --disk-cache-dir=/home/puppy/.cache/iron_flash  --ppapi-flash-path=/usr/share/iron_flash/extensions/libpepflashplayer.so --ppapi-flash-version=31.0.0.108 --always-authorize-plugins"
IRON_COMMAND="/usr/share/iron_flash/chrome-wrapper $@ --disable-translate --user-data-dir=/home/puppy/iron_flash_puppy_user_data_dir --disk-cache-dir=/home/puppy/.cache/iron_flash  --ppapi-flash-path=/usr/share/iron_flash/extensions/libpepflashplayer.so --ppapi-flash-version=31.0.0.108 --always-authorize-plugins "
IRON_COMMAND="${IRON_COMMAND//\\}"
sudo -u puppy $IRON_COMMAND
echo $IRON_COMMAND
