#!/bin/bash
# PARA Memory System Initializer
# Creates the PARA folder structure with templates
# Usage: bash para-init.sh [workspace_dir]
# 
# Idempotent: safe to run multiple times

set -e

# Use provided directory or current directory
WORKSPACE="${1:-.}"

# Resolve to absolute path
WORKSPACE="$(cd "$WORKSPACE" 2>/dev/null && pwd)" || {
    echo "Creating directory: $1"
    mkdir -p "$1"
    WORKSPACE="$(cd "$1" && pwd)"
}

echo "Initializing PARA structure in: $WORKSPACE"

# Create PARA folders
for dir in projects areas resources archives memory; do
    if [ ! -d "$WORKSPACE/$dir" ]; then
        mkdir -p "$WORKSPACE/$dir"
        echo "  Created $dir/"
    else
        echo "  $dir/ exists"
    fi
done

# Create MEMORY.md if it doesn't exist
if [ ! -f "$WORKSPACE/MEMORY.md" ]; then
    cat > "$WORKSPACE/MEMORY.md" << 'EOF'
# Long-Term Memory

Curated insights and lessons learned. Updated periodically from daily logs.

## Key Context
<!-- Important context that persists across sessions -->

## Lessons Learned
<!-- Significant insights worth remembering -->

## Preferences & Patterns
<!-- User preferences, workflow patterns discovered -->

---
*Last updated: (date)*
EOF
    echo "  Created MEMORY.md"
else
    echo "  MEMORY.md exists"
fi

# Create PARA.md index if it doesn't exist
if [ ! -f "$WORKSPACE/PARA.md" ]; then
    cat > "$WORKSPACE/PARA.md" << 'EOF'
# PARA Index

Quick reference for workspace organization.

## Projects (Active)
<!-- Active work with deadlines -->

## Areas
<!-- Ongoing responsibilities -->

## Resources
<!-- Reference material -->

## Archives
<!-- Completed/inactive items -->

---
*Update this index when files move between folders.*
EOF
    echo "  Created PARA.md"
else
    echo "  PARA.md exists"
fi

# Create .gitkeep in empty folders so git tracks them
for dir in projects areas resources archives memory; do
    if [ -z "$(ls -A "$WORKSPACE/$dir" 2>/dev/null)" ]; then
        touch "$WORKSPACE/$dir/.gitkeep"
    fi
done

echo ""
echo "PARA structure ready!"
echo ""
echo "Next steps:"
echo "  - Add project files to projects/"
echo "  - Document ongoing areas in areas/"
echo "  - Store reference material in resources/"
echo "  - Log daily notes in memory/YYYY-MM-DD.md"
