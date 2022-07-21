package Bencher::Scenario::Data::Walk::More::walking;

use strict;
use warnings;

# AUTHORITY
# DATE
# DIST
# VERSION

our $scenario = {
    summary => 'Benchmark walk() & walkdepth() with an empty walker subroutine against various data structures',
    participants => [
        { fcall_template => 'Data::Walk::More::walk(sub {}, <data>)' },
        { fcall_template => 'Data::Walk::More::walkdepth(sub {}, <data>)' },
        { fcall_template => 'Data::Walk::walk(sub {}, <data>)' },
        { fcall_template => 'Data::Walk::walkdepth(sub {}, <data>)' },
    ],
    datasets => [
        {name=>'ary0', args=>{data=>[]}},
        {name=>'ary10', args=>{data=>[1..10]}},
        {name=>'ary100', args=>{data=>[1..100]}},
        {name=>'ary1k', args=>{data=>[1..1000]}},
        {name=>'ary10k', args=>{data=>[1..10_000]}},
    ],
};

1;
# ABSTRACT:
