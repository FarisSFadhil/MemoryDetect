This is an automated Linux Bash script to identify random BIOS-level RAM detection errors on motherboards.
The script is needed to be deployed to a bootable USB drive in order to automate server reboots across preset cycles.
It ensures adequate POST time while executing IPMI commands to detect & log errors for analysis.
The server under test is needed to be booted to CentOS Linux prior to run this script.
The ipmitool sel clear command is used to clear the System Event Log (SEL) on devices or servers that support the Intelligent Platform Management Interface (IPMI). The SEL is a record of hardware-related events, such as temperature warnings, power failures, or system resets.
The ipmitool sel elist command is used to list all the entries in the System Event Log (SEL) on a server or device that supports IPMI. This command provides a detailed view of the event log, which includes information about hardware-related events such as temperature changes, system resets, power failures, and other critical system events.
