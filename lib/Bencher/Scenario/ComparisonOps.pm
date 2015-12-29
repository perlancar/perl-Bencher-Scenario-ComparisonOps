package Bencher::Scenario::ComparisonOps;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark comparison operators',

    participants => [
        {name=>'1k-numeq', code_template=>'my $val =     1; for (1..1000) { if ($val ==     1) {} if ($val ==     2) {} }'},
        {name=>'1k-streq', code_template=>'my $val = "foo"; for (1..1000) { if ($val eq "foo") {} if ($val eq "bar") {} }'},
    ],
};

1;
# ABSTRACT:

=head1 SYNOPSIS
