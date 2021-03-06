#!/usr/bin/perl -w
#
# Copy and install BTS Manager 
#
# Usage: NA
# 
# Noel Lacson, September 27, 2019
#                                        
#
use Cwd;
print "Please enter Device Name :";
my $dvice = <STDIN>;
chomp $dvice;
system("sudo chown -R ran:ran /etc/bluetooth");
system("perl -pi.back -e 's/#DiscoverableTimeout/DiscoverableTimeout/g;' /etc/bluetooth/main.conf");
system("sudo hciconfig hci0 iscan");
system("sudo hciconfig -a hciX name '$dvice'");
system("sudo hciconfig hci0 noscan");
print ("Bluetooth Activated\n");
system("perl -pi.back -e 's/nokia-test/$dvice/g;' /etc/hostname");
system("perl -pi.back -e 's/nokia-test/$dvice/g;' /etc/hosts");
system("hostnamectl set-hostname '$dvice'");
print ("Network Host Name set to '$dvice'\n");
system("hostnamectl\n");
print "Bluetooth device is now enabled\n";
if ($dvice ne "") {
print "Bluetooth device is now enabled\n";
system("perl -pi.back -e 's/NokNAM-SPR0100/$dvice/g;' AttRegistration.sh");
} else {
	#print "Please enter device name\n";
	return $dvice;
}

exit(0);


