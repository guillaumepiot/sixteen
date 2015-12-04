# sixteen

Install sixteen with npm

    $ npm install font-awesome

On your project level, import the required Sixteen components:

    @import "bourbon";
    @import "neat";

    // Sixteen framework
    @import "settings";
    @import "/path/to/node_modules/sixteen/components/reset";
    @import "/path/to/node_modules/sixteen/components/mixin";
    @import "/path/to/node_modules/sixteen/components/animation";
    @import "/path/to/node_modules/sixteen/components/grid";
    @import "/path/to/node_modules/sixteen/components/form";
    @import "/path/to/node_modules/sixteen/components/button";
    @import "/path/to/node_modules/sixteen/components/modal";
    @import "/path/to/node_modules/sixteen/components/text";
    @import "/path/to/node_modules/sixteen/components/table";
    @import "/path/to/node_modules/sixteen/components/alert";
    @import "/path/to/node_modules/sixteen/components/tooltip";
    @import "/path/to/node_modules/sixteen/components/datepicker";
    @import "/path/to/node_modules/sixteen/components/label";

Save the settings file as `_site.scss`

Create your own settings file to override default values:

    @import "/path/to/node_modules/sixteen/settings";

    $font_size: 16px;
    $base-line-height: 1.5em;

Save the settings file as `_settings.scss`, it should be placed in the same
folder as `site.scss`.