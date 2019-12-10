#!/usr/bin/perl -w
use Term::ANSIColor qw(:constants);
 
#
# 
#
# Usage: NA
# 
# Noel Lacson, October 18, 2019
#                                        
#
my $out1= "./assignnamespr.pl; ./SprintRegistration.sh";				
my $out2 = "./tmoassignname.pl; ./TmoRegistration.sh";
my $out3 = "./assignnameUsCel.pl; ./UsCelRegistration.sh";
my $out4 = "./assignnameAtt.pl; ./AttRegistration.sh";

use Cwd;
print "#########################################################\n";
print "#						        #\n";
print "#						        #\n";
print "#", GREEN,"		 1. Sprint",RESET,"			        #\n";
print "#", GREEN,"        	 2. Tmobile",RESET,"			        #\n";
print "#", GREEN,"        	 3. UsCellular",RESET,"			        #\n";
print "#", GREEN,"        	 4. AT&T",RESET,"			        #\n";
print "#						        #\n";
print "#						        #\n";
print "#########################################################\n";
print " 		 (Choose 1-4) :"; my $entry = <STDIN>;     
chomp $entry;
while ($entry ne ""){
print "";
print "Do you want to register the device now (Y/N)?";
my $input = <STDIN>;
chomp $input;
if ($input =~ m/^[Y]$/i){
if ($entry == 1){
print GREEN(BLINK()),"You are entering Sprint Jamura Registration...\n", RESET;
system('perl copyInstall.pl commandfilesprnt');
system($out1);

}
elsif ($entry == 2) {
print GREEN(BLINK()),"You are entering T-Mobile Jamura Registration...\n", RESET;
system('perl copyInstall.pl commandfiletmo');
system($out2);
}
elsif ($entry == 3) {
print GREEN(BLINK()),"You are entering UsCellular Jamura Registration...\n", RESET;
system('perl copyInstall.pl commandfileUsCell');
system($out3);
}
elsif ($entry == 4) {
print GREEN(BLINK()),"You are entering AT&T Jamura Registration...\n", RESET;
system('perl copyInstall.pl commandfilesAtt');
system($out4);
}else{
exit(0);
}
} else {
print "Exiting...\n";
sleep(rand(7));
exit(0);
}
}
bye:
exit(0);
