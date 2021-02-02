#!/usr/sbin/perl
# ARGV[0] is original file, ARGV[1] is the new file
# usually this will be something.md -> something.pandoc

open(IN, '<', $ARGV[0]) or die $!;
open(OUT, '>', $ARGV[1]) or die $!;

$col = 0;
# will delete div.right tags
while (defined($_ = readline IN)) {
  $f = 1;
  $_ =~ s/^-{3,4}$//g; 
  $_ =~ s/\\\[/\[/g; 
  $_ =~ s/\\\]/\]/g; 
  $_ =~ s/\\\\/\\/g; 
  $_ =~ s/^.*760AA.*$//g; 
  $_ =~ s/\\_/_/g; 
  $_ =~ s/<br\/>/\n\n/g; 
  $_ =~ s/`\$\$/\\\\\[/g; 
  $_ =~ s/\$\$`/\\\\\]/g; 
  $_ =~ s/`\$(.*?)\$`/\\\\\(\1\\\\\)/g; 
  $_ =~ s/\$$/\\\$/g; 
  $_ =~ s/(?<!\\)\\$/\\\\/g; 
  $_ =~ s/\\require\{color\}//g; 
  $_ =~ '/^# /d'; 
  if(/<div class="left">/) {
    $f = 0;
    print OUT ":::::::::::::: {.columns}\n";
    print OUT "::: {.column width=\"50%\"}";
  }elsif(/<div class="right">/) {
    $f = 0;
    $col = 1;
    print OUT '::: {.column width="50%"}';
  }elsif(m[</div>]) {
    $f = 0;
    print OUT ":::";
    print OUT "\n::::::::::::::" if $col;
    $col = 0;
  }
  print OUT $_ if $f;
}
