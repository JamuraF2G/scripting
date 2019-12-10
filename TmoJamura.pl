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

my $out = "./tmoassignname.pl; ./TmoRegistration.sh";
system('perl copyInstall.pl commandfiletmo');
print "";
print "Do you want to register the device now (Y/N)?";
my $input = <STDIN>;
chomp $input;
if ($input =~ m/^[Y]$/i){
system($out);
} else {
print "Please type the command ./TmoRegistration.sh if you are ready to register\n"
}
exit(0);


