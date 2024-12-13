# composer-normalize

Github: [https://github.com/phpcq/plugin-composer-normalize](https://github.com/phpcq/plugin-composer-normalize)

This plugin provides [composer-normalize](https://github.com/ergebnis/composer-normalize) integration for phpcq.

## Configuration

| Option name      | Type             | Required                   | Default | Description                                                                          |
|------------------|------------------|----------------------------|---------|--------------------------------------------------------------------------------------|
| `dry_run`        | `bool`           | :material-radiobox-marked: | `true`  | Show the results of normalizing, but do not modify any files                         |
| `file`           | `string`         | :material-radiobox-blank:  |         | Path to `composer.json` file relative to project root                                |
| `indent_size`    | `int`            | :material-radiobox-marked: | `2`     | Indent size (an integer greater than 0); should be used with the indent_style option |
| `indent_style`   | `space` or `tab` | :material-radiobox-marked: | `space` | Indent style (one of "space", "tab"); should be used with the `indent_size` option'  |
| `no_update_lock` | `bool`           | :material-radiobox-blank:  |         | Do not update lock file if it exists                                                 |
| `ignore_output`  | `string[]`       | :material-radiobox-blank:  | `[]`    | Regular expressions for output lines to ignore                                       |

## Installation

```yaml
phpcq:
  plugins:
    composer-normalize:
      version: ^1.0
      signed: false
  trusted-keys:
    - C00543248C87FB13

tasks:
  # Default configuration for documental purpose
  # composer-normalize:
  #   dry_run: true
  #   file: 'path/to/composer.json'
  #   indent_size: 2
  #   indent_style: space
  #   no_update_lock: false
  #   ignore_output: []

  # As dry run defaults to true, we add another task for fixing - you can then run:
  # `phpcq run composer-normalize` to report normalization issues
  # `phpcq run composer-normalize-fix` to report and fix normalization issues
  composer-normalize-fix:
    plugin: composer-normalize
    config:
      dry_run: false
```
