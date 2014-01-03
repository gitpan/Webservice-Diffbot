
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Diffbot Perl API",
  "AUTHOR" => "Cesare Gargano <garcer\@cpan.org>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Webservice-Diffbot",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Webservice::Diffbot",
  "PREREQ_PM" => {},
  "TEST_REQUIRES" => {},
  "VERSION" => "0.002",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = ();


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



