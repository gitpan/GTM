use 5.010000;
use ExtUtils::MakeMaker;
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
          'lib/GTM/Run.pm'         => '$(INST_LIBDIR)/GTM/Run.pm',
          'images/ampel-red.png'   => '$(INST_LIBDIR)/GTM/images/ampel-red.png',
          'images/ampel-green.png' => '$(INST_LIBDIR)/GTM/images/ampel-green.png',
          'images/ampel-off.png' => '$(INST_LIBDIR)/GTM/images/ampel-off.png',

                   },
    NAME              => 'GTM',
    VERSION_FROM      => 'lib/GTM.pm',
);
