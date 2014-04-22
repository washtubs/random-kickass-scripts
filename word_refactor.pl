#!/usr/bin/env perl
use Getopt::Long;
my @maps;
my $negative_word_regex="[^0-9A-Za-z_]";
GetOptions (
    #examples
    "maps=s@" => \@maps,
    "negative_word_regex=s" => \$negative_word_regex,
    )
or die("Error in command line arguments\n");

foreach (@maps) {
    #print $_;
    @map = split(/=/,$_);
    $substitutions{ $map[0] }=$map[1];
}

for (keys %substitutions)
{
    #print $_." ".$substitutions{$_}."|\n";

}

while (<>) {
    #print s/\Q$word_regex\E/f/g;
    for my $key (keys %substitutions)
    {
        my $subst = "s/(?<=${negative_word_regex})${key}(?=${negative_word_regex})/${substitutions{$key}}/g" ;
        eval($subst);
        $subst = "s/\^${key}(?=${negative_word_regex})/${substitutions{$key}}/g" ;
        eval($subst);
        $subst = "s/(?<=${negative_word_regex})${key}\$/${substitutions{$key}}/g" ;
        eval($subst);
        $subst = "s/\^${key}\$/${substitutions{$key}}/g" ;
        eval($subst);
    }
    print $_;
}
