#!/usr/bin/perl
use warnings;
use strict;
use lib 't/lib';
use Test::Text::FileTree;

run_tests(
	't/data/windows', {
		'C:' => {
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
		},
	}, [
		platform => 'Win32',
	]
);
