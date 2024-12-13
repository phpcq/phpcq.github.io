# Installation

=== "composer bootstrapper component (preferred)"

    The preferred method of installation is to use the bootstrapper via composer.

    ```
    composer require --dev phpcq/runner-bootstrap:@dev
    ```

    As we do not provide a stable release of the bootstrap component, you are required to specify the `:@dev` for the
    version.  This installs a runner binary shim as `vendor/bin/phpcq` (or wherever your composer `bin-dir` might point
    to), which automatically downloads the current runner `phar` on first run.

=== "download <code>phpcq.phar</code>"

    This is not recommended - consider installing the wrapper via composer require.

    ```
    curl https://phpcq.github.io/phar/latest/phpcq.phar
    ```
