# Usage

After [installation](installation.md) and [configuration](configuration.md), you should be good to go to install the
plugins and tool chains.

## Get the plugins and tools

Much like `composer` we also have `update` and `install` commands built in which are responsible for installing and
updating the plugins and tools.

Therefore, before running the configured tasks after cloning a fresh repo, we have to run `phpcq install`, which will
install the versions mentioned in the `phpcq.lock` file. If this file should not exist yet, the `install` command
behaves like `update`.

## Running the tasks

Invoking `phpcq` without any further parameter will execute the default task chain. This is either a chain with the
explicit name `default` or, when no chain with that name exist, the first defined chain.

If you want to execute a certain task, use the `run` command with the `<task-name>` as parameter.
