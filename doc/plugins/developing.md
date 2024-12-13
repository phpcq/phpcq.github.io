# Developing plugins

## Backward Compatibility Promise (BCP)

The policy is for the major part following the same as [Symfony's one][symfony-bc-policy]. Note that the code marked
as `@private` or `@internal` is excluded from the BCP.

Text displayed by commands or the content of error/exception messages is also not subject to the BCP.

To be on the safe side, only rely on interfaces in the [plugin-api repository][plugin-api].

Every plugin needs to have an entry script (most likely named after the tool it integrates) which exports an object
instance implementing one or more plugin interfaces.

These might be:

- [`Phpcq\PluginApi\Version10\DiagnosticsPluginInterface`][diagnostic-plugin] when implementing a code checker plugin.
- [`Phpcq\PluginApi\Version10\ExecPluginInterface`][exec-plugin] when providing an executable task (e.g. a command).
- [`Phpcq\PluginApi\Version10\EnricherPluginInterface`][enricher-plugin] when enhancing the configuration of another
  plugin.

There might be other types of plugins added in subsequent versions.

## Writing a diagnostic plugin (checking code!)

When writing a diagnostic plugin, we need to write methods to:

1. Describe the configuration of the plugin `DiagnosticsPluginInterface::describeConfiguration()`
2. Create the list of tasks to be performed from a configuration `DiagnosticsPluginInterface::createDiagnosticTasks()`

### Describing the configuration

A plugin can describe its configuration using the [`PluginConfigurationBuilderInterface`][] passed to the
`describeConfiguration` method.

### Instantiate the diagnostic tasks

## Writing an exec plugin (performing tasks!)

### Describe the exec task (What can be run?)

### Create the exec task (Run them!)

## Enriching configuration of other plugins

# Registering your plugin to the repository (optionally share your work!)

## Writing the `phpcq-plugin.json` definition

## Filing a pull request on the official plugin repository

Please create a pull request in [https://github.com/phpcq/repository](https://github.com/phpcq/repository) against
the `sources.yaml` file.

You should simply add the GitHub repository as a new line at the bottom.
Please also describe exactly what kind of functionality your plugin provides so other users can read this up later on.

[symfony-bc-policy]: https://symfony.com/doc/current/contributing/code/bc.html
[plugin-api]: https://github.com/phpcq/plugin-api
[diagnostic-plugin]: https://github.com/phpcq/plugin-api/blob/master/src/Version10/DiagnosticsPluginInterface.php
[exec-plugin]: https://github.com/phpcq/plugin-api/blob/master/src/Version10/ExecPluginInterface.php
[enricher-plugin]: https://github.com/phpcq/plugin-api/blob/master/src/Version10/EnricherPluginInterface.php
