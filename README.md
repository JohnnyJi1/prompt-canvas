# Prompt Canvas

Prompt Canvas is a local-first visual prompt workspace for people who want to save, organize, connect, version, and reuse AI prompts without setting up a backend.

It works as a single-page app: open `index.html`, or run a tiny static server. Your data stays in browser LocalStorage unless you export it.

## Why It Exists

Most prompt libraries are either simple lists or heavy team platforms. Prompt Canvas sits in the middle:

- fast enough for a personal prompt vault
- visual enough to map multi-step workflows
- structured enough to manage versions, variables, tags, and tools
- portable enough to back up as JSON

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

## Contributing

Contributions are welcome. Keep the app local-first, dependency-light, and fast.

## License

MIT
