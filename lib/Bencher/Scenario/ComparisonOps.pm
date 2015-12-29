package Bencher::Scenario::ComparisonOps;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark comparison operators',

    participants => [
        {name=>'1k-numeq'      , code_template=>'my $val =     1; for (1..1000) { if ($val ==     1) {} if ($val ==     2) {} }'},
        {name=>'1k-streq-len1' , code_template=>'my $val = "a"  ; for (1..1000) { if ($val eq "a"  ) {} if ($val eq "b"  ) {} }'},
        {name=>'1k-streq-len3' , code_template=>'my $val = "foo"; for (1..1000) { if ($val eq "foo") {} if ($val eq "bar") {} }'},
        {name=>'1k-streq-len10', code_template=>'my $val = "abcdefghij"; for (1..1000) { if ($val eq "abcdefghij") {} if ($val eq "klmnopqrst") {} }'},
    ],
};

1;
# ABSTRACT:

=head1 SYNOPSIS
