# Quarto GitHub Codespaces Template

[GitHub Codespaces](https://github.com/features/codespaces) are cloud-based
development environment that uses a container to provide you with
common languages, tools, and utilities for development. Once, initially
configured, it is very simple to share custom-made development
environment.

![Codespaces diagram](https://docs.github.com/assets/cb-68851/mw-1440/images/help/codespaces/codespaces-diagram.webp)

## Configuring Codespaces

When you work in a codespace, the environment you are working in is
created using a development container, or _dev container_, hosted on a
virtual machine. You can configure the dev container for a repository
so that codespaces created for that repository give you a tailored
development environment, complete with all the tools and runtimes you
need to work on a specific project.

The configuration files for a _dev container_ are contained in a
`.devcontainer` directory in your repository.

## `devcontainer.json`

The primary file in a dev container configuration is the `devcontainer.json` file,
usually located in the `.devcontainer` directory of your repository. It determine
the environment of codespaces created for your repository.
