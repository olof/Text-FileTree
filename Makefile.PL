#!/usr/bin/perl
use strict;
use warnings;
use ExtUtils::MakeMaker;

my $vcs = 'github.com/olof/Text-FileTree';

WriteMakefile (
	NAME => 'Text::FileTree',
	AUTHOR => 'Olof Johansson <olof@cpan.org>',
	LICENSE => 'perl',
	ABSTRACT_FROM => 'lib/Text/FileTree.pm',
	VERSION_FROM => 'lib/Text/FileTree.pm',
	SIGN => 1,

	META_MERGE => {
		'meta-spec' => { version => 2 },
		resources => {
			repository => {
				type => 'git',
				url => "https://$vcs.git",
				web => "https://$vcs",
			},
		},
	},

	PREREQ_PM => {
		'Test::More' => 0,
		'File::Slurp' => 0,
		'Module::Load' => 0,
	},
);

