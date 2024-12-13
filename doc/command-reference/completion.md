# `completion`

The completion command dumps the shell completion script required to use shell autocompletion (currently only bash
completion is supported).

Usage: `completion [options] [--] [<shell>]`

## Arguments

`shell`

:   The shell type (e.g. "`bash`"), the value of the `$SHELL` env var will be used if this is not given.

## Options

`--debug`
:   Tail the completion debug log

`-h, --help`
:   Display help for the command.

=== "Static installation"

    Dump the script to a global completion file and restart your shell:
    ```
    bin/phpcq completion bash | sudo tee /etc/bash_completion.d/phpcq
    ```

    Or dump the script to a local file and source it:
    ```
    bin/phpcq completion bash > completion.sh
    ```
    Now either source the file whenever you use the project
    ```
    source completion.sh
    ```
    or add this line at the end of your "`~/.bashrc`" file:
    ```
    source /path/to/completion.sh
    ```

=== "Dynamic installation"
Add this to the end of your shell configuration file (e.g. "~/.bashrc"):
```
eval "$(/path/to/bin/phpcq completion bash)"
```
