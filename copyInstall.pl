#!/usr/bin/perl -w

#
# Copy and install BTS Manager files and Software
#
# Usage: 
#    ./copyInstall <space> commandfile
#
# Noel Lacson, September 27, 2019
#                                        
#


use Cwd;
my $Path = getcwd;
$cmdf = $ARGV[0] or die "Ooopss! Sorry you need a command file...\n";


open (IN, "<$cmdf") or die "Can't open $cmdf: $!\n";


while (<IN>) 

{
$out = "bash $Path/$cmdf"
}

close IN;
system($out);
exit(0);


