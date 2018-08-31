cd ~/Desktop
mkfile -n Profile.txt
system_profiler SPHardwareDataType | egrep -w "Serial|Model" >> Profile.txt
system_profiler SPHardwareDataType | egrep -w "Processor|Total" >> Profile.txt
system_profiler SPDisplaysDataType | egrep -w "Chipset|VRAM" >> Profile.txt
system_profiler SPSoftwareDataType | egrep -w "Version|Volume" >> Profile.txt
system_profiler SPStorageDataType | egrep -w "File|Capacity" >> Profile.txt
