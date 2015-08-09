# Change Log
All notable changes to this project will be documented in this file.
This project tries to adhere to [Semantic Versioning](http://semver.org/).
Changes for version 1.0.0 describe differences to the [original project](https://github.com/drewhamlett/brackets-beautify).


## 1.0.1 - 2015-06-25
### Changed
- Updated js-beautify to version 1.5.10


## 1.0.0 - 2015-06-24
### Added
- Use Brackets Preferences language and path layer to configure `Beautify on save`
- Enable use of nested settings from `.jsbeautifyrc`
- Provide settings to _css_beautify_
- Format SVG as HTML
- Spanish translation
- Italian translation
- Japanese translation

### Changed
- Updated js-beautify to version 1.5.7
- Turned on `end_with_newline` option by default
- Only change document if beautified text looks different

### Removed
- SASS Formatting
- Fake French translation
- `git_happy` option as it is identical to `end_with_newline`

### Fixed
- Deprecation warnings for $().on/off() on Brackets modules
