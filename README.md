# Roid Macros Cursive

**Roid Macros Cursive** is an extension for [Roid-Macros](https://github.com/MarcelineVQ/Roid-Macros) that enables spell tracking and conditional execution using [Cursive](https://github.com/pepopo978/Cursive) in the background. This allows you to create smarter macros that check spell cooldowns, availability, and other conditions while leveraging Cursive's spell tracking system.

## Features

- **Conditional Spell Execution**: Use Roid-Macros' powerful condition system alongside Cursive's tracking.
- **Simplified Syntax**: Execute spells with `/curse` while maintaining compatibility with Roid-Macros conditions.
- **Seamless Integration**: Works alongside Roid-Macros without conflicts.
- **Supports All Spells Tracked by Cursive**: Works with DoTs, buffs, debuffs, and more.

## Installation

1. Ensure you have both [Roid-Macros](https://github.com/MarcelineVQ/Roid-Macros) and [Cursive](https://github.com/pepopo978/Cursive) installed.
2. Download **Roid Macros Cursive** and place it in your `[World of Warcraft]\Interface\AddOns` folder.
3. Reload your game (`/reload`).

## Usage

### Basic Syntax
```
/curse [conditions] Spell_Name
```
- `[conditions]` – Optional Roid-Macros conditions (e.g., `nocooldown`, `combat`, `target=player`).
- `Spell_Name` – The name of the spell you want to cast (must match the spell name in Cursive's tracking).

### Examples

1. **Apply Curse of Agony if it's not active on the target**:
   ```lua
   /curse Curse of Agony
   ```

2. **Cast Corruption only if it's not on cooldown**:
   ```lua
   /curse [nocooldown:Corruption] Corruption
   ```

3. **Cast Shadow Bolt only in combat**:
   ```lua
   /curse [combat] Shadow Bolt
   ```

### Supported Conditions
- `nocooldown` – Only cast if the spell is not on cooldown.
- `combat` – Only cast if the player is in combat.
- `harm` – Only cast if the target is hostile.
- And more (see [Roid-Macros documentation](https://github.com/MarcelineVQ/Roid-Macros)).

## FAQ

**Q: Why isn't my macro working?**  
A: Make sure:
   - You have both Roid-Macros and Cursive installed and enabled.
   - The spell name matches exactly what Cursive tracks.

**Q: Can I use this with other macro addons?**  
A: This is specifically designed for Roid-Macros. Other macro addons may not support the `/curse` command.

**Q: Does this work with macros in action bars?**  
A: Yes! You can place `/curse` commands in action buttons just like regular macros.

## Feedback & Support

Report issues or suggest improvements on:
- [GitHub](https://github.com/theunamedio/Roid-Macros-Cursive)