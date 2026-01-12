# GitHub Codespaces ♥️ Quarto

Welcome to a custom made [GitHub Codespaces](https://github.com/features/codespaces)
repository packed with everything needed to [get started with Quarto](https://quarto.org/docs/get-started/hello/vscode.html).

You can use this repository as a template for your own projects. To do
so, click the "Open in GitHub Codespaces" just below. This will create
a new repository with the same files and structure.

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/guillaumegilles/codespaces-quarto)

## 🔋 Batteries included

At creation, the codespace comes with:
- lastest version of **Python** and pre-installed packages:
  - jupyter
  - matplotlib
  - plotly
- VS Code for the web and useful extensions:
  - [Quarto](https://marketplace.visualstudio.com/items?itemName=quarto.quarto)
  - [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python)
  - [Jupyter](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.jupyter)

## Quarto CLI Commands

```bash
# Generate an output file based on the metadata in hello.qmd (html, by default) 
quarto render hello.qmd
```

```bash
quarto preview
```

# GitHub Codespaces

GitHub Codespaces are a development environment that's hosted in the cloud. Codespace uses a
**container** to provide common languages, tools, and utilities for
development. Projects are customizable by configuring [dev container](https://containers.dev/
files inside the repository (often known as configuration-as-code),
which creates a repeatable codespace configuration. Once, initially
configured, it is very simple to share custom-made development
environment.

Each codespace is hosted by GitHub in a [Docker container](https://www.docker.com/resources/what-container/),
running on a virtual machine. All GitHub personal accounts include :
- $120$ hours of free compute time.
- $15$ GB storage a month.

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
  "image": "mcr.microsoft.com/devcontainers/universal:linux",
  "features": {}
}
```

### `image`

The [default Linux image](https://github.com/devcontainers/images/tree/main/src/universal)
is perfect start. It is based on Ubuntu packed with several programming
language : Python, Node.js, JavaScript, TypeScript, C++, Java, C#, F#,
.NET Core, PHP, Go, Ruby, and Conda.

### `features`

Dev Container **Features** are self-contained units of installation code
and development container configuration. Features are designed to
install atop a wide-range of base container images.

### Options

- `"hostRequirements"`: While `devcontainer.json` does not focus on
  hardware or VM provisioning, it can be useful to know one container’s
  minimum RAM, CPU, and storage requirements.
- `"postCreateCommand"`: This command finalizes container setup when a
  dev container is created. We'll use it to install Python packges
  listed inside `requirements.txt` file.
- `"customization"`: Customize the _user experience_ while working
  inside hte container.

# Quarto CLI

```text
quarto-cli-book/
├── generate.py
├── _quarto.yml
├── index.qmd
├── commands/
│   ├── quarto.qmd
│   ├── quarto-render.qmd
│   ├── quarto-preview.qmd
│   └── ...
└── man.css
```
