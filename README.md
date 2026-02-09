# PARA Memory

A skill that gives AI agents a structured way to organize workspace knowledge using [Tiago Forte's PARA method](https://fortelabs.com/blog/para/), extended with daily memory logs and long-term memory.

## Agent Install

Send this to your agent:

```
Install the PARA memory skill from https://github.com/theSamPadilla/para-memory. Clone the repo, copy SKILL.md and the scripts/ folder into my skills directory, then run the init script to set up my workspace.
```

## How It Works

The skill teaches agents to sort information into four buckets plus a memory layer:

| Folder | What goes here | Example |
|---|---|---|
| `projects/` | Active work with a goal and end date | `migrate-to-v2.md` |
| `areas/` | Ongoing responsibilities, no end date | `infrastructure.md` |
| `resources/` | Reference material and topics of interest | `postgres-tuning.md` |
| `archives/` | Anything completed or no longer active | `old-auth-system.md` |
| `memory/` | Daily logs (`YYYY-MM-DD.md`) | `2025-01-15.md` |

Two root files tie it together:
- **`MEMORY.md`** — Curated long-term insights distilled from daily logs
- **`PARA.md`** — Quick-reference index of everything in the workspace

## Manual Installation

### Option 1: Copy into your skills directory

```bash
git clone https://github.com/theSamPadilla/para-memory.git
cp -r para-memory/SKILL.md /path/to/your/skills/para-memory/
cp -r para-memory/scripts /path/to/your/skills/para-memory/
```

### Option 2: Reference directly

Point your agent to this repo's `SKILL.md` as a skill source.

## Usage

### 1. Initialize a workspace

```bash
bash scripts/para-init.sh /path/to/workspace
```

This creates the full folder structure with template files. The script is idempotent — safe to run multiple times on the same directory.

### 2. Let the agent use the skill

`SKILL.md` contains everything an agent needs:
- **Decision tree** — "Where does this file go?" logic
- **Templates** — Starter markdown for projects, areas, and resources
- **Memory workflow** — How to write daily logs and curate `MEMORY.md`
- **Lifecycle rules** — How to move projects through active → archived, extract learnings, and update the index

No configuration needed. The agent reads `SKILL.md` and follows the instructions.

## License

[WTFPL](LICENSE)
