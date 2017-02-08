#!/usr/bin/env perl6

use lib 'lib';
use NativeCall;
use NC;

my point $point;
my @array := CArray[int32].new;
@array[0] = 1;
@array[1] = 1;
@array[2] = 2;

$point = print-array(3, @array);

say "point.x: {$point.x}";
say "point.y: {$point.y}";
