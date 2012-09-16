#!/usr/bin/perl
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile (
	NAME => 'Text::FileTree',
	AUTHOR => 'Olof Johansson <olof@cpan.org>',
	LICENSE => 'perl',
	ABSTRACT_FROM => 'lib/Text/FileTree.pm',
	VERSION_FROM => 'lib/Text/FileTree.pm',
	SIGN => 1,

	PREREQ_PM => {
		'Test::More' => 0,
		'File::Slurp' => 0,
	},
);

