# `install`

Install the phpcq installation from existing `.phpcq.lock` file.

If no `.phpcq.lock` file has been created yet, the `install` command behaves like the [`update`](update.md) command.

### Options

Options:

`-d, --dry-run`
:   Dry run

`-x, --cache=CACHE`
:   Path to the phpcq cache directory (default: `/$(HOME)/.cache/phpcq`)

`-k, --trust-keys`
:   Add all keys to trusted key storage (**discouraged!**)

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
