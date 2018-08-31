cd ~/Desktop
mkfile -n b Profile.txt
echo GENERAL SYSTEM > Profile.txt
system_profiler SPHardwareDataType | egrep -w "Serial|Model|Processor|Total" >> Profile.txt
echo GRAPHICS >> Profile.txt
system_profiler SPDisplaysDataType | egrep -w "Chipset|VRAM" >> Profile.txt
echo SOFTWARE >> Profile.txt
system_profiler SPSoftwareDataType | egrep -w "Version|Volume" >> Profile.txt
echo HDD/SSD >> Profile.txt
system_profiler SPStorageDataType | egrep -w "File|Capacity" >> Profile.txt
echo MEMORY >> Profile.txt
system_profiler SPMemoryDataType | egrep -w "Size|Type|Speed" >> Profile.txt

# UNDER CONSTRUCTION
#
# This section utilizes variables to determine the QUANTITY, SIZE, TYPE and
# SPEED of memory sticks present in the system.
#
# mmrystx=$(system_profiler SPMemoryDataType | grep -c "OK")
# mmrsz=$(system_profiler SPMemoryDataType | grep ""
# echo "$mmrystx " >> Profile.txt


echo SYSTEM DUMP >> Profile.txt
echo >> Profile.txt
echo >> Profile.txt
echo >> Profile.txt 
system_profiler >> Profile.txt



