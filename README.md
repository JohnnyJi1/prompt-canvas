# Prompt Canvas

[![Live Demo](https://img.shields.io/badge/Live%20Demo-GitHub%20Pages-00d09c?style=for-the-badge)](https://johnnyji1.github.io/prompt-canvas/)
[![Local First](https://img.shields.io/badge/Local--first-No%20backend-111827?style=for-the-badge)](#features)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)](LICENSE)

Prompt Canvas is a local-first visual prompt workspace for people who want to save, organize, connect, version, and reuse AI prompts without setting up a backend.

It works as a single-page app: open `index.html`, or run a tiny static server. Your data stays in browser LocalStorage unless you export it.

**Live demo:** https://johnnyji1.github.io/prompt-canvas/

## Why It Exists

Most prompt libraries are either simple lists or heavy team platforms. Prompt Canvas sits in the middle:

- fast enough for a personal prompt vault
- visual enough to map multi-step workflows
- structured enough to manage versions, variables, tags, and tools
- portable enough to back up as JSON

Think of it as a small personal prompt registry, whiteboard, and workflow mapper in one file.

## Features

- Visual canvas with draggable prompt nodes
- Node-to-node connections for prompt chains and workflows
- Right-click context menu for fast actions
- Multi-select with `Shift + drag`
- Batch copy, duplicate, delete, and favorite
- Custom tags and custom tool names
- Dark mode and light mode
- Prompt variables with `{{variable}}` syntax
- Fill variables from the detail panel and copy the compiled prompt
- Version history with rollback
- Search, tag filters, tool filters, and favorites
- JSON import and export
- Local-first persistence with LocalStorage
- No backend, build step, or database required

## Product Highlights

Prompt Canvas is designed around the workflows that make prompt libraries actually useful:

- **Capture quickly:** save reusable prompts as structured nodes.
- **Reuse safely:** keep versions and roll back when a prompt gets worse.
- **Adapt with variables:** write templates once, fill them for each use case.
- **Think visually:** connect prompts into chains for research, writing, coding, or agent workflows.
- **Stay portable:** export everything as JSON.

## Quick Start

Clone the repo and open it with any static file server:

```bash
python3 -m http.server 8765
```

Then visit:

```text
http://localhost:8765/index.html
```

You can also open `index.html` directly in a browser, but a local server gives the most consistent behavior.

Or use the hosted demo:

```text
https://johnnyji1.github.io/prompt-canvas/
```

## Desktop Shortcut On macOS

This repo includes a convenience launcher:

```bash
./start-prompt-canvas.command
```

The app can also be packaged as a macOS `.app` wrapper that starts the local server and opens the page.

## How To Use

- Drag the canvas to move around.
- Scroll to zoom.
- Drag nodes to reposition them.
- Drag from one node port to another to create a connection.
- Right-click the canvas or a node to open quick actions.
- Use `Shift + drag` on empty canvas space to select multiple nodes.
- Use `{{content}}`, `{{language}}`, or any custom variable inside prompts.
- Select a node to open the detail panel and fill variables.

## Keyboard Shortcuts

| Shortcut | Action |
| --- | --- |
| `Cmd/Ctrl + A` | Select all visible nodes |
| `Cmd/Ctrl + C` | Copy selected prompts |
| `Cmd/Ctrl + D` | Duplicate selected nodes |
| `Delete / Backspace` | Delete selected nodes |
| `Esc` | Clear selection or close modal |

## Data Model

Prompt Canvas stores data in LocalStorage:

- prompt nodes
- prompt edges
- canvas view
- theme preference

Use **Export** regularly if your prompt library is important.

## Roadmap

- Real folders and workspaces
- Markdown preview for prompt bodies
- Edge labels visible in a side panel
- Prompt test cases and expected outputs
- Git-backed prompt sync
- Browser extension for quick prompt insertion
- Public gallery templates
- Optional encrypted cloud sync

## Star The Project

If Prompt Canvas helps your workflow, starring the repo helps more people discover it.

## Contributing

Contributions are welcome. Keep the app local-first, dependency-light, and fast.

## License

MIT
