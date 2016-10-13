#!/bin/bash

awk '
BEGIN{
	FS="#";
	RS="\n";
}{
	t1=0;
	t2=0;
	t3=0;
	t4=0;
	t5=0;

	for(i=3;i<=16; i++){
		t1+=$i;
	}
	for(i=17;i<=26; i++){
		t2+=$i;
	}
	for(i=27;i<=36; i++){
		t3+=$i;
	}
	for(i=37;i<=49; i++){
		t4+=$i;
	}
	for(i=50;i<=58; i++){
		t5+=$i;
	}
	print "\n---"
	print $1,$2,"\n";
	print "Part\t\t\t\tCorrect Answers\tMarks Obtained";
	print "Most Basic Commands\t\t\t\t",t1,"\t",t1;
	print "Basic Linux Commands\t\t\t\t",t2,"\t",2*t2;
	print "Advanced Linux Commands\t\t\t\t",t3,"\t",3*t3;
	print "Basic VIM Commands, Use vim not vi\t\t\t\t",t4,"\t",t4;
	print "Advanced VIM\t\t\t\t",t5,"\t",3*t5;
	print "Total\t\t\t\t",t1+t2+t3+t4+t5,"\t",t1+2*t2+3*t3+t4+3*t5;

}

' $1 | column -te -s $'\t'