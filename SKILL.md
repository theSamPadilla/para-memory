---
name: para-memory
description: "Organize agent workspace knowledge using PARA method (Projects, Areas, Resources, Archives) with daily memory logs. Use when setting up a new workspace, reorganizing files, filing completed work, or doing periodic memory maintenance."
---

# PARA Memory System

Organize your workspace using Tiago Forte's PARA method combined with daily memory logs.

## Setup

Run the init script to create the folder structure:

```bash
bash scripts/para-init.sh [workspace_dir]
```

This creates:
```
workspace/
├── projects/      # Active work with deadlines
├── areas/         # Ongoing responsibilities
├── resources/     # Reference material
├── archives/      # Completed/inactive items
├── memory/        # Daily logs (YYYY-MM-DD.md)
├── MEMORY.md      # Long-term curated insights
└── PARA.md        # Quick reference index
```

## Where to File

Decision tree:

1. **Has an end date or deliverable?** → `projects/`
2. **Ongoing responsibility, no end date?** → `areas/`
3. **Reference material or topic of interest?** → `resources/`
4. **Done or inactive?** → `archives/`
5. **Daily log entry?** → `memory/`

## Templates

### Project File (`projects/project-name.md`)

```markdown
# Project Name
**Status:** Active | Blocked | Paused
**Location:** /path/to/code
**Goal:** One sentence
**Started:** YYYY-MM-DD

## Context
Brief description of the project.

## Key Decisions
- Decision 1 (YYYY-MM-DD): rationale

## Next Steps
- [ ] Task 1
- [ ] Task 2
```

### Area File (`areas/area-name.md`)

```markdown
# Area Name
**Scope:** What this covers
**Tools:** Key tools used

## Current State
Brief status of this area.

## Routines
- Check X weekly
- Review Y monthly
```

### Resource File (`resources/topic.md`)

No strict template. Title + content. These are reference docs—organize as makes sense for the content.

## Memory Management

### Daily Files (`memory/YYYY-MM-DD.md`)
- Raw logs as things happen
- Decisions made, problems solved, context gathered
- Don't overthink organization—just capture

### Long-term Memory (`MEMORY.md`)
- Curated, distilled insights
- Significant lessons learned
- Key context that persists across sessions
- **Rule:** Never store secrets unless explicitly asked

### Maintenance Cycle
Every few days:
1. Review recent `memory/YYYY-MM-DD.md` files
2. Extract insights worth keeping long-term
3. Update `MEMORY.md` with distilled learnings
4. Prune stale info from `MEMORY.md`
5. Update `PARA.md` index

## Lifecycle

### New Work
Create in `projects/` with the project template.

### Project Completion
1. Move project file to `archives/`
2. Extract learnings → add to `resources/`
3. Update `PARA.md` index

### Periodic Review
During heartbeats (for openclaw bots) or maintenance:
- Check project statuses
- Reorganize misplaced files
- Archive stale projects
- Update area documentation

## PARA.md Index

Maintain `PARA.md` at workspace root as a quick-reference index:

```markdown
# PARA Index

## Projects (Active)
- [project-name](projects/project-name.md) - Brief description

## Areas
- [area-name](areas/area-name.md) - Scope

## Resources
- [topic](resources/topic.md) - What it covers

## Archives
- [old-project](archives/old-project.md) - Completed YYYY-MM-DD
```

Keep it updated as files move between folders.
