# `exec`

Execute a tool with the passed arguments.

The executable tool names are provided by exec task plugins.

Usage: `exec [options] [--] [<application> [<args>...]]`

## Arguments

`application`
:   The name of the tool that should be executed. You can obtain a list of available tools by invoking `exec --help`.

`args`
:   Optional options and arguments to pass to the tool - the nature of available arguments and options depends on the
    tool being invoked.

## Options

`-c, --config=CONFIG`
:   The configuration file to use.

    If not given, the following filenames are tried (in the current working directory):

    - `.phpcq.yaml`
    - `phpcq.yaml`
    - `.phpcq.yaml.dist`
    - `phpcq.yaml.dist`

`--home-dir=HOME-DIR`
:   Path to the phpcq home directory (default: `$(CWD)/.phpcq`)

`--ignore-platform-reqs`
:   Ignore platform requirements (`php` & `ext-` packages).
