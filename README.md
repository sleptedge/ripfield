# Ripfield

Ripfield is a performance-focused Roblox UI library for large hubs. It renders only the active tab
page, coalesces rapid configuration saves, supports localization and custom themes, and keeps the
established `CreateWindow` and control API.

## Installation

Use the latest release bundle:

```lua
local Ripfield = loadstring(game:HttpGet(
	"https://github.com/sleptedge/ripfield/releases/latest/download/bundled.luau"
))()
```

For a reproducible deployment, pin a release tag instead of `latest`, for example
`https://github.com/sleptedge/ripfield/releases/download/1.0.0/bundled.luau`, and verify the adjacent
`bundled.luau.sha256` asset.

## Quick Start

```lua
local window = Ripfield:CreateWindow({
    name = "My Hub",
    subtitle = "Ready",
    theme = "default",
    autoShow = false, -- finish building first, then call window:Show()
    performanceMode = true,
    autosaveDelay = 0.3,
    configuration = {
        autoSave = true,
        autoLoad = true,
        fileName = "main",
        customFolder = "MyHub",
    },
})

local main = window:CreateTab({ name = "Main", icon = "home" })

main:CreateButton({
    name = "Run",
    callback = function()
        print("Running")
    end,
})

local enabled = main:CreateToggle({
    name = "Enabled",
    flag = "enabled",
    value = true,
    callback = function(value)
        print(value)
    end,
})

main:CreateSlider({
    name = "Speed",
    flag = "speed",
    range = { 0, 100 },
    increment = 1,
    value = 25,
    callback = function(value)
        print(value)
    end,
})

enabled:Set(false)
window:Notify({ title = "Ripfield", content = "Loaded", duration = 4 })
window:Show()
```

Property names are documented in camelCase. PascalCase property keys are also accepted by the
existing public API.

## Controls

Every control is created from a tab. Common properties are `name`, `description`, `icon`, `flag`,
`forgetState`, and `callback`, where applicable.

| Method | Important properties | Returned handle |
| --- | --- | --- |
| `CreateButton` | `callback` | movable button |
| `CreateToggle` / `CreateSwitch` | `value`, `flag`, `callback` | `Set(value, skipCallback?)` |
| `CreateSlider` | `range`, `increment`, `value`, `suffix`, `minimal` | `Set(value, skipCallback?)` |
| `CreateDropdown` | `options`, `value`, `multiSelect`, `placeholder` | `Set(value, skipCallback?)` |
| `CreateInput` | `value`, `placeholder`, `numeric`, `clearOnFocus` | `Set(value, skipCallback?)` |
| `CreateKeybind` | `value`, `hold`, `holdThreshold`, `onChanged` | `Set(value, skipChanged?)` |
| `CreateColorPicker` | `color`, `alpha` | `Set(color)`, `SetAlpha(alpha)` |
| `CreateStat` | `value`, `prefix`, `suffix`, `display`, `changeMode` | `Set(value)`, `ResetBaseline()` |
| `CreateSection` | `name`, `icon` | movable section |
| `CreateGroup` | `direction = "row"` or `"column"` | nested control group |

Movable handles support `MoveTo(index)`, `MoveToTop()`, `MoveToBottom()`, `MoveUp()`, and
`MoveDown()`. Saved control values are also available through `window.Flags[flag]`; assigning a value
routes through that control's `Set` method.

## Window API

- `CreateTab({ name, icon })` creates a tab.
- `CreateTag({ text, icon, color, order })` adds a title-bar tag.
- `Notify(props)`, `Toast(props)`, and `Popup(props)` show transient UI.
- `Show()`, `Hide()`, `ToggleHide()`, and `ToggleMinimise()` control visibility.
- `Navigate(tabNameOrHandle)` changes the active tab.
- `ChangeTheme(nameOrTable)` applies a built-in or custom theme.
- `SetLocale(localeId)`, `SetTranslator(fn)`, and `RegisterTranslations(tables)` localize UI copy.
- `Save(name?)`, `Load(name?)`, `ListConfigs()`, and `DeleteConfig(name)` manage configurations.
- `Unload()` destroys the window and its connections.

Built-in themes are `default`, `amethyst`, `cobalt`, `ember`, `frost`, and `rose`. See
[`src/types.luau`](src/types.luau) for the complete property and handle types, and
[`example.client.luau`](example.client.luau) for a larger working example.

## Development

See [CONTRIBUTING.md](CONTRIBUTING.md). Run `make ci` for formatting, lint, type analysis, tests, and
coverage, and run `make bundle` when source changes affect the distributed artifact.

## License

Ripfield is distributed under MPL-2.0. Ripfield modifications are copyright (c) 2026 sleptedge.
Inherited files retain their original copyright and MPL notices. See [LICENSE](LICENSE) and
[NOTICE.md](NOTICE.md) for the full terms and attribution.
