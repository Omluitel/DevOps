### Git Configuration Levels and Management

| Configuration Level      | How to Set                                 | How to List                                            | How to Remove                                 | How to Reset                                  | Where to Look                                   |
|--------------------------|-------------------------------------------|--------------------------------------------------------|-----------------------------------------------|-----------------------------------------------|------------------------------------------------|
| **Local (per-repository)**   | Set configurations within a specific repository:<br>`git config --local <key> <value>` | List configurations for the current repository:<br>`git config --local --list`<br>Or view the `.git/config` file | Remove specific configurations:<br>`git config --local --unset <key>` | Delete or modify entries in the `.git/config` file | `.git/config` within the repository directory  |
| **Global (user-specific)**   | Set configurations globally for your user:<br>`git config --global <key> <value>` | List global configurations:<br>`git config --global --list`<br>Or view `~/.gitconfig` or `~/.config/git/config` | Remove global configurations:<br>`git config --global --unset <key>` | Delete or modify entries in `~/.gitconfig` or `~/.config/git/config` | `~/.gitconfig` or `~/.config/git/config` in the user's home directory |
| **System-wide (system-wide)** | Set configurations system-wide (affecting all users):<br>`git config --system <key> <value>` | List system-wide configurations:<br>`git config --system --list`<br>Or view `/etc/gitconfig` or `/etc/git/config` | Remove system-wide configurations (requires admin privileges):<br>`git config --system --unset <key>` | Delete or modify entries in `/etc/gitconfig` or `/etc/git/config` | `/etc/gitconfig` or `/etc/git/config` system-wide |



### Useful Git Commands and Examples

| Git Command                | Description                                       | Example Usage                                     |
|----------------------------|---------------------------------------------------|---------------------------------------------------|
| `git init`                 | Initialize a new Git repository.                  | `git init myproject`                             |
| `git clone <URL>`         | Clone a remote repository to your local machine.  | `git clone https://github.com/user/repo.git`     |
| `git add <file>`          | Stage changes for commit.                        | `git add file.txt`                               |
| `git commit -m "message"` | Commit staged changes with a descriptive message.| `git commit -m "Add new feature"`                |
| `git status`              | Show the status of your working directory.       | `git status`                                     |
| `git log`                 | View commit history.                              | `git log`                                        |
| `git branch`              | List all branches in the repository.             | `git branch`                                     |
| `git checkout <branch>`   | Switch to a different branch.                    | `git checkout myfeature`                        |
| `git merge <branch>`      | Merge changes from one branch into the current branch. | `git merge develop`                          |
| `git pull`                | Fetch and merge changes from a remote repository. | `git pull origin main`                          |
| `git push`                | Push your local commits to a remote repository.  | `git push origin mybranch`                      |
| `git remote -v`           | List remote repositories and their URLs.         | `git remote -v`                                  |
| `git fetch`               | Fetch changes from a remote repository.          | `git fetch origin`                               |
| `git stash`               | Temporarily save changes that are not ready to commit. | `git stash save "Work in progress"`         |
| `git tag`                 | List and manage tags (e.g., releases).           | `git tag`                                        |
| `git reset <file>`        | Unstage changes while keeping them in the working directory. | `git reset file.txt`                    |
| `git revert <commit>`     | Create a new commit that undoes a previous commit. | `git revert abc123`                       |
| `git blame <file>`        | Show who last modified each line of a file.      | `git blame file.txt`                            |
| `git remote add <name> <URL>` | Add a new remote repository.                | `git remote add upstream https://github.com/upstream/repo.git` |
| `git remote remove <name>` | Remove a remote repository.                   | `git remote remove upstream`                    |
| `git remote rename <old-name> <new-name>` | Rename a remote repository.            | `git remote rename origin myorigin`             |
| `git remote show <name>` | Show information about a remote repository.     | `git remote show origin`                         |
| `git fetch --prune`       | Prune (remove) deleted branches from remote tracking. | `git fetch --prune`                         |
