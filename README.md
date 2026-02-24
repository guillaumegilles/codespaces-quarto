# Quarto in GitHub Codespaces

A ready-to-use template to write, run, and preview [Quarto](https://quarto.org/)
documents directly in [GitHub Codespaces](https://github.com/features/codespaces).

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/guillaumegilles/codespaces-quarto)

## Why this repo

This repository is a minimal starter for Quarto + Python in the browser:

- Quarto CLI is installed in the dev container
- Python (latest) is available
- Common data/plotting packages are preinstalled from `requirements.txt`
- Useful VS Code extensions are preinstalled:
  - [Quarto](https://marketplace.visualstudio.com/items?itemName=quarto.quarto)
  - [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python)
  - [Jupyter](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.jupyter)

## Quick start (1 minute)

1. Click **Open in GitHub Codespaces**.
2. Wait for the container to finish setup.
3. Open `hello.qmd` (opened automatically on startup).
4. The preview server starts automatically on port `8000`.
5. Edit the file and see changes live in preview.

## Project structure

- `hello.qmd`: sample Quarto document (Python engine)
- `requirements.txt`: Python packages installed at Codespace creation
- `.devcontainer/devcontainer.json`: environment and startup automation
- `_page/`: generated preview output directory (gitignored)

## Useful commands

Run these in the Codespaces terminal:

- `quarto preview hello.qmd --output-dir _page --no-browser --port 8000`
- `quarto render hello.qmd --output-dir _page`

## Customize for your project

- Rename `hello.qmd` to your document name
- Update `requirements.txt` with your dependencies
- Adjust `.devcontainer/devcontainer.json` if you need other startup commands, ports, or extensions

## Troubleshooting

- **Port 8000 already in use**: run preview on another port, for example `quarto preview hello.qmd --output-dir _page --no-browser --port 8001`.
- **Preview not running anymore**: restart it with `quarto preview hello.qmd --output-dir _page --no-browser --port 8000`.

## Notes

- The generated `_page/` directory is excluded from Git by default.
- This repo is designed to be used as a template for new Quarto projects.
  