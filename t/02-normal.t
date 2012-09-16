#!/usr/bin/perl
use warnings;
use strict;
use lib 't/lib';
use Test::Text::FileTree;

my $reffile = 't/data/reference';

my $ref = {
	'Makefile.PL' => {},
	'lib' => {
		'Text' => {
			'FileTree.pm' => {},
		},
	},
	't' => {
		'01-distribution.t' => {},
		'02-parse.t' => {},
	},
};

run_tests($reffile, $ref);
