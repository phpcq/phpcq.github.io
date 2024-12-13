# `self-update`

Updates the phpcq phar file

### Options

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

`-x, --cache=CACHE`
:   Path to the phpcq cache directory (default: `/$(HOME)/.cache/phpcq`)

`--channel=CHANNEL`
:   The channel of the release (default: `unstable`).

    Right now only unstable is available.

`--base-uri=BASE-URI`
:   The base uri of the phpcq releases [default: "https://phpcq.github.io/distrib/phpcq"]

`--unsigned`
:   Disable signature checking

`--dry-run`
:   Do not perform update, only check for a new release.

`-f, --force`
:   Force to update
