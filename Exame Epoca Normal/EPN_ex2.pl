#!usr/local/bin/perl -w

#open(FILE,"/etc/aliases.txt") || die "erro";

my $input1 = "mail: postmaster";
my $input2 = "bugs: |/usr/local/bin/pedro/program-bug-tracker";
my $input3 = "project-list: johndoe\@host1.uiuc.edu,jsmith\@host2.uiuc.edu,someone\@host.purdue.edu";

my @array;
$array[0] =$input1;
$array[1] =$input2;
$array[2] =$input3;

	foreach $linha (@array){
		if($linha =~ /(.*):(.*)/){
			print "Bem estruturado\n";
		}else{
			print "Mal estruturado\n";
		}
	}
