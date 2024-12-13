# `.phpcq.yaml.dist` file reference

The topics on this reference page are organized alphabetically by top-level key to reflect the structure of the file
itself.

Top-level keys that define a section in the configuration file such as `plugins`, `tasks` and so on, are listed with
the options that support them as sub-topics.
This maps to the `<key>: <option>: <value>` indent structure of the file.

The `.phpcq.yaml.dist` file is a [YAML](https://yaml.org/) file defining the project information.
The default path is `./.phpcq.yaml.dist`.

## artifact

This is the output directory where build artifacts and logs will get stored.

``` yaml
phpcq:
  artifact: .phpcq/build
```

## directories

List here all directories that contain code.
For most projects, this means the `src` directory but some also have a dedicated `tests` directory as well.
``` yaml
phpcq:
  - src
  - tests
```

## plugins

Definition of plugins to load.

Each key of this object is a plugin name.

Minimum example for a plugin (This installs phpunit in any version, requiring the plugin to be signed):
``` yaml
phpcq:
  plugins:
    phpunit: {}
```

Full example for a plugin:
``` yaml
phpcq:
  plugins:
    phpunit:
      version: ^1.0
      signed: false
      requirements:
        phpunit:
          version: ^9.0
          signed: true
```

### requirements

!!! info
    The needed requirements are already defined by the plugin.

    You only have to define this section if you want to (partially) override this information.

Override the requirements of the plugin.

Default: *none*

#### signed

This allows to disable signing requirement for the tool in this plugin.

Default: `true`

#### version

Default: `*`

This is useful if the plugin defines a lower minimum version than desired or allows multiple versions but only one is
desired.

### runner-plugin

!!! danger
    Do not use this unless you know what you are doing.

Url to the plugin file. Use this to override default plugin.

Default: *none*

### signed

This allows to disable signing requirement for this plugin.

Default: `true`

### version

Specifies desired version constraint for the plugin.

``` yaml
phpcq:
  plugins:
    phpunit:
      # Require 1.x but minimum 1.1+
      version: ^1.1
```

Default: `*`

## repositories

Defines a list of repositories to obtain plugin and tool information from.

This is a list of http(s) URIs and paths relative to the `.phpcq.yaml.dist`.

The official repository is: `https://phpcq.github.io/repository/repository.json`
``` yaml
phpcq:
  repositories:
    - https://phpcq.github.io/repository/repository.json
```
