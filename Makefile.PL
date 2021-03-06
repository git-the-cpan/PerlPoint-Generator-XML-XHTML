
# Makefile.PL -- Makefile template for PerlPoint::Generator::XML::XHTML.
#
# This file is part of the "PerlPoint::Generator::XML::XHTML" module package.
# This package is free software, you can redistribute it
# and/or modify it under the terms of the Artistic License.

# load module
use ExtUtils::MakeMaker;

# the package requires modern perl
require 5.00503;

my $version='0.01';

# write makefile
$ok=WriteMakefile(
                  NAME         => 'PerlPoint::XML::XHTML',
                  ABSTRACT     => 'PerlPoint fomatters to produce XHTML via the XML language module.',
                  VERSION      => $version,
                  PREREQ_PM    => {
                                   PerlPoint::Generator::XML => 0.01,
                                   Memoize                   => 1,
                                   Test::Harness             => 1.25,
                                   Test::More                => 0.11,
                                  },
                  dist         => {
                                   COMPRESS                  => 'gzip -9',
                                   SUFFIX                    => 'tgz',
                                  },
                 );

# provide additional informations
warn <<EOM if $ok;

Welcome to PerlPoint::Generator::XML::XHTML $version!

This distribution adds two HTML formatters to the XML
generator C<PerlPoint::Generator::XML>. Please see the
README file for more details.

The installation is well prepared now,
and you might run "make test" and
"make install".

EOM
