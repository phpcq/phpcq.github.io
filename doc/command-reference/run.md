# `run`

This command runs a configured build task.

Should the task fail, it will be reported with a non-zero exit code (unless option `--exit-0` has been passed).

If the passed task name is a chain, all tasks will get executed in sequential order and the result will get logged.

### Arguments

`task`
:   Define a specific task which should be run (default: `default`)

### Options


`--exit-0`
:   Forces the exit code to 0 - this is useful to "ignore" failures in CI as "allow-failure" mode.

`-r, --report=REPORT`
:   Set the report format(s) that shall be created (default: `file-report`).

    This can be passed multiple times.

    Available options are:

    - `file-report` - an xml file tracking violations organized by files.
    - `task-report` - an xml file tracking violations organized by check tasks.
    - `checkstyle` - [checkstyle](https://checkstyle.org/) compatible XML output which is used by many tools.

`-o, --output=OUTPUT`
:   Set a specific console output format (default: `default`).

    This can be passed multiple times.

    Available options are:

    - `default` - The default phpcq output.
    - `github-action` - Github action compatible output.

`--threshold=THRESHOLD`
:   Set the minimum threshold for diagnostics to be reported - any severity below this will not get reported (default:
    `marginal`).

    Available options are (in ascending order):

    - `none`
    - `info`
    - `minor`
    - `marginal`
    - `major`
    - `fatal`

`-j, --threads=THREADS`
:   Set the amount of threads to run in parallel (default: `nproc`).

    The allowed values range from `1` (single thread) to the amount of available logical processors (if it can be
    determined)

`-c, --config=CONFIG`
:   The configuration file to use.

    If not given, the following filenames are tried (in the current working directory):

    - .phpcq.yml
    - phpcq.yml
    - .phpcq.yml.dist
    - phpcq.yml.dist

`--home-dir=HOME-DIR`
:   Path to the phpcq home directory (default: `$(CWD)/.phpcq`)

`--ignore-platform-reqs`
:   Ignore platform requirements (`php` & `ext-` packages).

`-ff, --fast-finish`
:   Do not keep going and execute all tasks but break on first error.
