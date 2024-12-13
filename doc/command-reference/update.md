# `update`

Update the phpcq installation.

This resolves the most current available versions of plugins and tools that match the current platform.
Then it updates the `.phpcq.lock` file and proceeds to download and install them.

### Options

`-f, --force-reinstall`
:   Force to reinstall existing tools

`-d, --dry-run`
:   Dry run - this will resolve the new versions but only report them instead of writing `.phpcq.lock` and installing
    them.

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