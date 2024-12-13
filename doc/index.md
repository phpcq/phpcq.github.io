<div class="grid cards" markdown>

-   :fontawesome-solid-gears:{ .lg .middle } __Integrate build and check tools__

    ---

    PHPCQ supports a lot of plugins and tools eg.
    [phpunit](https://phpunit.de),
    [phpmd](https://phpmd.org/),
    [phploc](https://github.com/sebastianbergmann/phploc),
    [phpcpd](https://github.com/sebastianbergmann/phpcpd),
    [psalm](https://psalm.dev/),
    [composer-require-checker](https://github.com/maglnet/ComposerRequireChecker)…
    more are on their way!

-   :fontawesome-solid-bug:{ .lg .middle } __See what's wrong at once__

    ---

    Collect the **output of all tools** and present them in **aggregated** form. No matter if you are on CI or the local
    workstation. In GitHub and Gitlab even with annotations in Merge Requests.

-   :fontawesome-solid-child:{ .lg .middle }  __Easy to set up, easy to run__

    ---

    Installed through composer, runs with PHP.

-   :fontawesome-solid-jet-fighter:{ .lg .middle } __Runs everywhere where there's PHP!__

    ---

    Like your local machine, your Gitlab CI or any hosted CI like GitHub actions.

</div>

## What's phpcq and why you should use it.

`phpcq` is short for "**PHP** **C**ode **Q**uality".

In the PHP ecosystem, there exists a variety of check tools, each with its unique purpose. Unfortunately, each and every
of these tools has its own output format. Some use industry standard output e.g. junit logs but having to see through
all of these is not feasible at all.

Also organizing tools in pipelines is nice for CI when having Gitlab pipeline and GitHub actions, however, running them
locally would be nice as well, collecting all the tool output and presenting it to the developer in a structured manner.

That's where phpcq comes into play.

The purpose of phpcq is to increase code quality in the PHP ecosystem by running configured tool chains and collecting
the output of each of said tools into a single aggregated log file (or GitHub action log etc.).

The heart of phpcq is the [phpcq runner][phpcq-runner] which executes build chain and aggregates the results of all
tools.

The PHP Code Quality Project consists of a framework, runner and collection of code quality related tools.


## Getting started

Head over to the [Quickstart](quick-start/index.md) guide to get it up and running in no time.

## Credits

Project originally created by: [Christian Schiffler][discordier] and [Tristan Lins][tril] and now actively maintained
by [Christian Schiffler][discordier] and [David Molineus][dmolineus].

## License

The project and the core plugins are released under the [MIT License][MIT]

## Sponsorship

You can support this project via GitHub Sponsorship by sponsoring
the main contributors [discordier][sponsor-discordier] and [dmolineus][sponsor-dmolineus].

[phpcq-runner]: https://github.com/phpcq/phpcq
[discordier]: https://github.com/discordier
[tril]: https://github.com/tril
[dmolineus]: https://github.com/dmolineus
[MIT]: https://github.com/phpcq/phpcq/blob/master/LICENSE
[sponsor-discordier]: https://github.com/sponsors/discordier
[sponsor-dmolineus]: https://github.com/sponsors/dmolineus
