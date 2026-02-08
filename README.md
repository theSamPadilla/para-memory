# PARA Memory

A skill for AI agents that implements [Tiago Forte's PARA method](https://fortelabs.com/blog/para/) for knowledge management, combined with a daily memory log system.

## What is PARA?

PARA is a simple organizational system with four categories:

- **Projects** — Active efforts with a goal and end date
- **Areas** — Ongoing responsibilities with no end date  
- **Resources** — Topics of interest and reference material
- **Archives** — Inactive items from the above

This skill adds a **Memory** layer for AI agents—daily logs plus a curated long-term memory file.

## What This Skill Does

Helps AI agents:
- Set up a consistent workspace structure
- Know where to file new information
- Maintain daily logs and long-term memory
- Lifecycle projects from active → archived
- Keep a quick-reference index of all content

## Installation

### Option 1: Copy to your skills directory

```bash
git clone https://github.com/theSamPadilla/para-memory.git
cp -r para-memory/SKILL.md /path/to/your/skills/para-memory/
cp -r para-memory/scripts /path/to/your/skills/para-memory/
```

### Option 2: Reference directly

Point your agent to this repo's `SKILL.md` as a skill source.

## Usage

### Initialize a workspace

```bash
bash scripts/para-init.sh /path/to/workspace
```

This creates the folder structure:
```
workspace/
├── projects/
├── areas/
├── resources/
├── archives/
├── memory/
├── MEMORY.md
└── PARA.md
```

### For agents

Reference `SKILL.md` for:
- Decision tree on where to file content
- Templates for project and area files
- Memory maintenance workflows
- Lifecycle management (active → archived)

## Compatibility

Works with any agent that supports `SKILL.md` files:
- [OpenClaw](https://github.com/anthropics/openclaw)
- Claude Code
- OpenAI Codex
- Any SKILL.md-compatible agent framework

## License

MIT
