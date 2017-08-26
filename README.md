# Sixteen

Docs: [https://cotidia.github.io/UI](https://cotidia.github.io/UI)

Install sixteen with npm

```console
$ npm install sixteen
```

On your project level, import the required Sixteen components:

```sass
@import "bourbon";
@import "neat";

@import "sixteen/settings";

@import "sixteen/components/reset";

@import "sixteen/components/alert";
@import "sixteen/components/animation";
@import "sixteen/components/badge";
@import "sixteen/components/button";
@import "sixteen/components/datepicker";
@import "sixteen/components/dialog";
@import "sixteen/components/form";
@import "sixteen/components/grid";
@import "sixteen/components/label";
@import "sixteen/components/menu";
@import "sixteen/components/table";
@import "sixteen/components/tag";
@import "sixteen/components/tooltip";
@import "sixteen/components/type";
@import "sixteen/components/layout";
@import "sixteen/components/util";
```

Save the settings file as `_site.scss`

Create your own settings file to override default values:

```sass
@import "/path/to/node_modules/sixteen/settings";

$font_size: 16px;
$base-line-height: 1.5em;
```

Save the settings file as `_settings.scss`, it should be placed in the same
folder as `site.scss`.
