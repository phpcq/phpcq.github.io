# Update

## Updating the runner

Updating the runner is easy via the [`self-update`](../command-reference/self-update.md) command - this will update
the downloaded `.phar` to the current version.

## Updating plugins and tools

Updating plugin and tool versions can be done by invoking the [`update`](../command-reference/update.md) command by
calling `phpcq update`, which will determine the latest compatible versions mentioned in the `phpcq.yaml` file and
update the `phpcq.lock` file. After the file has been written, the plugins and tools will automatically get installed.
