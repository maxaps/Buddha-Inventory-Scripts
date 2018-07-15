echo "SysInfo Started PROGRESS 0%"
system_profiler | grep "Model Identifier:" >> systemprofile.txt
echo "SysInfo PROGRESS 12.5%"
system_profiler | grep "Processor Name:" >> systemprofile.txt
echo "SysInfo PROGRESS 25%"
system_profiler | grep "Processor Speed:" >> systemprofile.txt
echo "SysInfo PROGRESS 37.5%"
system_profiler | grep "Number of Processors:" >> systemprofile.txt
echo "SysInfo PROGRESS 50%"
system_profiler | grep "Total Number of Cores:" >> systemprofile.txt
echo "SysInfo PROGRESS 62.5%
system_profiler | grep "Memory:" >> systemprofile.txt
echo "SysInfo PROGRESS 75%
system_profiler | grep "Serial Number (system):" >> systemprofile.txt
echo "SysInfo PROGRESS 87.5%
system_profiler | grep "Hardware UUID:" >> systemprofile.txt
echo "Process COMPLETE"
