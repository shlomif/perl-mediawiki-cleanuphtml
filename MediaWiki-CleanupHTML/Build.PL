use 5.008;
use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'MediaWiki::CleanupHTML',
    license             => 'mit',
    dist_author         => q{Shlomi Fish <shlomif@cpan.org>},
    dist_version_from   => 'lib/MediaWiki/CleanupHTML.pm',
    build_requires => {
        'HTML::TreeBuilder::XPath' => 0,
        'Scalar::Util' => 0,
        'Test::More' => 0,
    },
    requires => {
        'perl' => 5.006,
    },
    add_to_cleanup      => [ 'MediaWiki-CleanupHTML-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
