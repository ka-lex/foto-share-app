
for (( ; ; ))
do
  echo "infinite loops [ hit CTRL+C to stop]"
  
  echo "syncing android device"
  ~/adb-sync/adb-sync --reverse "/sdcard//WhatsApp/Media/WhatsApp Images/" ~/development/fotoshare/app/assets/images/upload
  #  ./adb-sync --reverse /sdcard/DCIM/ ~/test-images
  
  echo "sleep again"
  sleep 5
done