# `validate`

Validate the phpcq installation.

This validates the yaml file

### Options

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
