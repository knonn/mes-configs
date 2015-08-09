# Brackets Beautify
[Brackets](http://brackets.io/) Extension that formats open HTML, CSS, and JavaScript files using [js-beautify](https://github.com/beautify-web/js-beautify) version [1.5.10](https://github.com/beautify-web/js-beautify/blob/master/CHANGELOG.md#v1510).

This is a fork of [drewhamlett](https://github.com/drewhamlett)'s [brackets-beautify](https://github.com/drewhamlett/brackets-beautify) extension that I have created due to the disappointing maintenance of the original.

## Installation
### Latest Release
To install the latest _release_ of this extension use the built-in Brackets [Extension Manager](https://github.com/adobe/brackets/wiki/Brackets-Extensions) which downloads the extension from the [extension registry](https://brackets-registry.aboutweb.com/).

### Latest Commit
To install the latest _commit_ of this extension use the built-in Brackets [Extension Manager](https://github.com/adobe/brackets/wiki/Brackets-Extensions) which has a function to `Install from URL...` using this link: https://github.com/Hirse/brackets-outline-list/archive/master.zip.

## Usage
Brackets Beautify can be run manually on the whole file or on a selection.
Use the menu entry `Edit > Beautify`, the context-menu entry `Beautify`, or the keyboard shortcut `Cmd-Shift-L` (Mac) / `Ctrl-Shift-L` (Win).

Alternatively it can be enabled to run automatically on save.
Use the menu entry `Edit > Beautify on save` or the more [advanced settings](https://github.com/Hirse/brackets-beautify#File-Options-for-Beautify-on-Save) to activate.

### Configuration
#### Beautifier Options
Brackets Beautify supports the same [options](https://github.com/beautify-web/js-beautify#options) as [js-beautify](https://github.com/beautify-web/js-beautify) with the exception of indentation-based options (`indent_size`, `indent_char`, and `indent_with_tabs`) which are taking from the current settings in Brackets.
The options can be specified in a `.jsbeautifyrc` file on project level.
The default is defined in `default.jsbeautifyrc` and looks like this:
```json
{
    "js": {
        "eol": "\n",
        "indent_level": 0,
        "preserve_newlines": true,
        "max_preserve_newlines": 10,
        "jslint_happy": true,
        "space_after_anon_function": true,
        "brace_style": "collapse",
        "keep_array_indentation": true,
        "keep_function_indentation": false,
        "space_before_conditional": true,
        "break_chained_methods": false,
        "eval_code": false,
        "unescape_strings": false,
        "wrap_line_length": 0,
        "wrap_attributes": "auto",
        "end_with_newline": true
    },
    "css": {
        "eol": "\n",
        "end_with_newline": true,
        "selector_separator_newline": true,
        "newline_between_rules": true
    },
    "html": {
        "eol": "\n",
        "end_with_newline": true,
        "preserve_newlines": true,
        "max_preserve_newlines": 10,
        "indent_inner_html": false,
        "brace_style": "collapse",
        "indent_scripts": "normal",
        "wrap_line_length": 0,
        "wrap_attributes": "auto"
    }
}
```

#### File Options for Beautify on Save
Brackets Beautify leverages [Brackets preferences](https://github.com/adobe/brackets/wiki/How-to-Use-Brackets#preferences), which means that you can specify per project settings by defining a `.brackets.json` in the root directory of your project. With Brackets preferences you can even define per file settings, which is really handy when dealing with third party libraries or minified resources.

Brackets Beautify also support per language settings, which enables you to enable/disabled `Beautify on save` for your documents using the Brackets language layer.

The sample `.brackets.json` below generally enables `Beautify on save` and disables it for any JavaScript file in `thirdparty`, any JavaScript file whose filename contains `min` and any PHP file.
```json
{
    "hirse.beautify.onSave": true,
    "path": {
        "thirdparty/**.js": {
            "hirse.beautify.onSave": false
        },
        "**min**.js": {
            "hirse.beautify.onSave": false
        }
    },
    "language": {
        "php": {
            "hirse.beautify.onSave": false
        }
    }
}
```

## Issues
Brackets Beautify uses [js-beautify](https://github.com/beautify-web/js-beautify) to beautify files and is therefore limited to its capabilities.
For any issues concerning the actual formatting please refer to the [js-beautify issues](https://github.com/beautify-web/js-beautify/issues).

## License
Brackets Beautify is licensed under the [MIT license](http://opensource.org/licenses/MIT). The original [brackets-beautify](https://github.com/drewhamlett/brackets-beautify) and [js-beautify](https://github.com/beautify-web/js-beautify) are also licensed under the MIT license.
