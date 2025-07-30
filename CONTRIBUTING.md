First off, thanks for taking the time to contribute! :tada:

# test in JOSM

To test your changes in JOSM, from `po` directory, run `make`. This will create a zip file that can be loaded in the JOSM validator Preferences page.

## advanced debugging

You can set the parameter `validator.check_assert_local_rules` to true in JOSM Preferences page and launch josm from the command line.

You will then get errors in the console if JOSM fails to parse some rules or if the tests (`assertMatch` and `assertNoMatch`) do not pass.

# about translations

If you have updated the labels inside the MapCSS file you need to update the translation template : from `po` directory, run `make *.po`. You will need to commit the .pot file.

The translations then happen in [Weblate](https://hosted.weblate.org/projects/jungle-bus/transport_mapcss-validation-ruleset/).

