#!/usr/bin/perl

# Simple File Extension Checker # 
# By Parth Bheda # 


use 5.010;
use strict;
use warnings;

use File::Basename;

my @exts = qw(.txt .zip);

while (my $file = <DATA>) {
  chomp $file;
  my ($name, $dir, $ext) = fileparse($file, @exts);

  given ($ext) {
    when ('.txt') {
      say "$file is a text file";
    }
    when ('.zip') {
      say "$file is a zip file";
    }
    default {
      say "$file is an unknown file type";
    }
  }
}

__DATA__
file.txt
file.zip
file.pl
