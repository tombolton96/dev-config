#!/usr/bin/env perl
use strict;
use warnings;
use LWP::UserAgent;

$ENV{'PERL_LWP_SSL_VERIFY_HOSTNAME'} = 0;

my $path = 'https://raw.githubusercontent.com/tombolton96/dev-config/main/.wezterm.lua';
my $ua = new LWP::UserAgent;
$ua->agent("hcat/1.0");
my $request = new HTTP::Request("GET", $path);
my $response = $ua->request($request);
my $body =  $response->content;

my $wt_config_file_loc = glob('~/.wezterm.lua');
open(WT_CONFIG_FILE, '>', $wt_config_file_loc) or die $!;

print WT_CONFIG_FILE $body;

close(WT_CONFIG_FILE);
