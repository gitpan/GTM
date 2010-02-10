use 5.010000;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    dist        => {
                    PREOP       => 'chmod -R u=rwX,go=rX . ;',
                    COMPRESS    => 'gzip -9v',
                    SUFFIX      => '.gz',
                   },

    PREREQ_PM   => {
                    Gtk2                => 1.043,
                    AnyEvent            => 5.24,
                    'File::HomeDir'     => 0.89,
                    'common::sense'     => 3.0,
                   },
    EXE_FILES   => [ qw(bin/gtm) ],
    PM          => { 
          'lib/GTM.pm'         => '$(INST_LIBDIR)/GTM.pm',
          'images/ampel-red.png'   => '$(INST_LIBDIR)/GTM/images/ampel-red.png',
          'images/ampel-green.png' => '$(INST_LIBDIR)/GTM/images/ampel-green.png',

                   },
    NAME              => 'GTM',
    VERSION_FROM      => 'lib/GTM.pm',
);
