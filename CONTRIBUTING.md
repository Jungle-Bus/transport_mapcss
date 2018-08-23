First off, thanks for taking the time to contribute! :tada:

# test in JOSM

To test your changes in JOSM, from `po` directory, run `make`. This will create a zip file that can be loaded in the JOSM validator Preferences page.

# about translations

If you have updated the labels inside the MapCSS file you need to update the translation strings : from `po` directory, run `make *.po` and fix or add new translations.

You don't have to provide all languages, the project is on transifex so translators can give us some help on that :+1:

Don't forget to commit the .pot and .po files ;)
