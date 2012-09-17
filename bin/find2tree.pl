#!/usr/bin/perl
use warnings;
use strict;
use feature qw/say/;
use Text::FileTree;

sub out_node {
	my $tree = shift;
	my $level = shift // 0;

	for(sort keys %{$tree}) {
		say ' 'x$level, $_;
		out_node($tree->{$_}, $level + 1);
	}
}

my $ft = Text::FileTree->new;
out_node($ft->parse(<>));
