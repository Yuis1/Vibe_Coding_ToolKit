---
allowed-tools: Write(*),Read(*),Bash(mkdir:*),Bash(ls:*),Bash(echo:*),Bash(cp:*),Bash(date:*)
description: Generate a new slash command with version management support
version: "2.0.0"
author: markshawn2020
---

# Generate Slash Command with Version Management

You are creating a new slash command with built-in version management. Based on the user's requirements in $ARGUMENTS, generate a complete slash command file with version control.

## Version Management Features
This command supports:
- **Semantic versioning** (MAJOR.MINOR.PATCH)
- **Automatic backup creation** when updating existing commands
- **Version history tracking** in YAML front matter
- **Change log generation** for updates

## Instructions
1. **Parse the arguments**: The format should be `<command-name> "<description>" [project|user] [version] [additional-requirements]`
	- command-name: The name of the slash command (without /)
	- description: What the command does
	- scope: "project" (`.claude/commands/`) or "user" (`~/.claude/commands/`) - defaults to "user"
	- version: Semantic version (defaults to "1.0.0" for new commands)
	- additional requirements: Any special features needed

2. **Version Management Process**:
	- Check if command file already exists
	- If exists: Create backup with current version number
	- Update version number (increment appropriately)
	- Add change log entry to front matter

3. **Create the appropriate directory structure**:
	- For project commands: `.claude/commands/`
	- For user commands: `~/.claude/commands/`
	- Create `versions/` sub directory for backups if needed

4. **Generate the command file** with enhanced YAML front matter:
	```yaml
	---
	allowed-tools: [appropriate tools]
	description: [command description]
	version: "X.Y.Z"
	created: "YYYY-MM-DD"
	updated: "YYYY-MM-DD"
	change log:
		version: "X.Y.Z"
		date: "YYYY-MM-DD"
		changes: ["Initial version" or specific changes]
	---
	```

5. **Backup Strategy**:
	- Before updating: `cp command-name.md command-name.v[old-version].md`
	- Keep backup files for rollback capability
	- Optional: Move backups to `versions/` sub directory

6. **Consider these features based on requirements**:
	- Git operations: Include git-related allowed-tools
	- File operations: Include Read, Write, Edit tools
	- GitHub operations: Include Bash(gh:*) tools
	- Web operations: Include Web Fetch, Web Search tools
	- Directory operations: Include LS, Glob, Grep tools

## Example allowed-tools patterns
- `Bash(git:*)` - for git commands
- `Bash(gh:*)` - for GitHub CLI commands
- `Read(*)`, `Write(*)`, `Edit(*)` - for file operations
- `LS(*)`, `Glob(*)`, `Grep(*)` - for directory / search operations
- `WebFetch(*)`, `WebSearch(*)` - for web operations

## Command arguments: $ARGUMENTS
Create the slash command file now with version management, ensuring it follows best practices for Claude Code slash commands.