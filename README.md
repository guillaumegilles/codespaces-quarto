# Quarto GitHub Codespaces Template

[GitHub Codespaces](https://github.com/features/codespaces) are a
development environment that's hosted in the cloud. Codespace uses a
**container** to provide you with common languages, tools, and
utilities for development. Customize your project for GitHub Codespaces
by configuring [dev container](https://containers.dev/) files to your
repository (often known as configuration-as-code), which creates a
repeatable codespace configuration for all users of your project. Once,
initially configured, it is very simple to share custom-made
development environment.

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

The primary file in a dev container configuration is the
`devcontainer.json` file, usually located in the `.devcontainer`
directory of your repository. It determine the environment of
codespaces created for your repository.

```json
{
  "image": "mcr.microsoft.com/devcontainers/universal:2",
  "features": {}
}
```

### `features`

Dev Container Features are self-contained units of installation code
and development container configuration. Features are designed to
install atop a wide-range of base container images. 

#### Usage

To reference a Feature, add the desired Feature(s) to a
`devcontainer.json`. See a Feature's README for available options, or
leave the options empty to use the default value.

Example `devcontainer.json`:

{
  "image": "mcr.microsoft.com/devcontainers/universal:2",
  "features": {
    "ghcr.io/rocker-org/devcontainer-features/quarto-cli:1": {
      "version": "latest"
      }
  },

{
    "name": "my-project-devcontainer",
    "image": "mcr.microsoft.com/devcontainers/base:ubuntu",  // Any generic, debian-based image.
    "features": {
        "ghcr.io/devcontainers/features/go:1": {
            "version": "1.18"
        },
        "ghcr.io/devcontainers/features/docker-in-docker:1": {
            "version": "latest",
            "moby": true
        }
    }
}



- `"image": "mcr.microsoft.com/devcontainers/universal:2",`
- `"features": {}`