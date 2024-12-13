# Configuration

## The `.phpcq.yaml.dist` file.

All the configuration of phpcq is contained within the `.phpcq.yaml.dist` file.

Here is a minimal example configuration, which requires a single plugin (`phpunit` in this case).

=== "Minimal example"

    ``` yaml
    phpcq:
      repositories:
        - https://phpcq.github.io/repository/repository.json

      directories:
        - src
        - tests

      artifact: .phpcq/build

      plugins:
        phpunit:
          version: ^1.0
          signed: false
          tools:
            phpunit:
              version: ^9.0

      trusted-keys:
        - 4AA394086372C20A

    tasks:
      default:
        - phpunit
    ```

=== "Minimal annotated example"

    ``` yaml
    phpcq:
      repositories:
        # This is a list of repositories to obtain plugin and tool information from.
        # The official repository is:
        - https://phpcq.github.io/repository/repository.json

      directories:
        # List here all directories that contain code.
        # For most projects, this means the `src` directory.
        - src
        # Some also have a dedicated `tests` directory as well.
        - tests

      # This is the output directory where build artifacts and logs will get stored.
      artifact: .phpcq/build

      # This section is used to require plugins and tools.
      # Versions are defined with composer constraint notion.
      plugins:
        # Require the plugin 'phpunit'
        phpunit:
          # In at least version 1.0
          version: ^1.0
          # Mark the plugin as not signed (This is optional, default: true)
          signed: false
          # Optional
          tools:
            phpunit:
              version: ^9.0

      trusted-keys:
        # Sebastian Bergmann uses this to sign phpunit phars.
        # NOTE: This key is used to check the signature of the phpunit tool(!) only.
        #       The plugin has been marked unsigned above.
        - 4AA394086372C20A

    # Define here all tasks that can be executed.
    tasks:
      default:
        - phpunit
    ```

For details on the file format, please consult the [reference](../phpcq-yaml-reference.md).
