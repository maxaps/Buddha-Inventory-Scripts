# Make a new .txt file with the system serial number as the name with a pattern recognizing grep command that IDs the system serial number and returns it as a variable
# The variable will be inserted in the mkfile target.

x=Profile.txt

cd ~/Desktop
mkfile -n b "x"
echo GENERAL SYSTEM >> Profile.txt
system_profiler SPHardwareDataType | egrep -w "Serial|Model|Processor|Total" >> Profile.txt
echo GRAPHICS >> Profile.txt
system_profiler SPDisplaysDataType | egrep -w "Chipset|VRAM" >> Profile.txt
echo SOFTWARE >> Profile.txt
system_profiler SPSoftwareDataType | egrep -w "Version|Volume" >> Profile.txt
echo HDD/SSD >> Profile.txt
system_profiler SPStorageDataType | egrep -w "File|Capacity" >> Profile.txt
echo MEMORY >> Profile.txt
# system_profiler SPMemoryDataType | egrep -w "Size|Type|Speed" >> Profile.txt


# UNDER CONSTRUCTION
#
# This section utilizes variables to determine the QUANTITY, SIZE, TYPE and
# SPEED of memory sticks present in the system.
#
mmrystx=$(system_profiler SPMemoryDataType | grep -c "OK")
mmryQSTS=$(system_profiler SPMemoryDataType | grep -A4 "BANK 0/DIMM0:" | egrep -v "BANK 0/DIMM0:")
echo $mmrystx X >> Profile.txt
echo $mmryQSTS >> Profile.txt
#system_profiler SPMemoryDataType | grep -A4 "BANK 0/DIMM0:" | egrep -v "BANK 0/DIMM0" >> Profile.txt


# Keep this stuff at the end, ALWAYS
echo SYSTEM DUMP >> Profile.txt
echo >> Profile.txt
echo >> Profile.txt
echo >> Profile.txt 
#system_profiler >> Profile.txt



