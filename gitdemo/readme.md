### Intro

`git` - the stupid content tracker...or a fast, scalable, distributed revision control system with an unusually rich command set that provides both high-level operations and full access to internals.

**Git tracks content not files**: Git’s object store is based on the hashed computation of the contents of its objects, not on the file or directory names from the user’s original file layout. 

If two separate files located in two different directories have exactly the same content, Git stores a sole copy of that content as a `blob` (binary large objects) within the object store.

Nice video [Linus Torvalds & git](https://www.youtube.com/watch?v=idLyobOhtO4)

### Git Transport

![gittransport](git_transport.png)


### Generic flow

* Add file to staging/index:

```bash
# add to stage aka create a blob
git add ...

# check blobs
git rev-list --objects --all
git log --oneline
```
* Create a snapshot

```bash
# commit aka create tree object
git commit -m 'mesage here`

# send changes to remote repo
git push
```

### Scenarios

* UNDO

```bash
# local undo commits and PRESERVE changes
git reset --soft HEAD^  # last commit
git reset --soft HEAD~2 # last 2 commits

# local undo commits and REMOVE changes
git reset --hard HEAD~1

# public undo commit aka rewrite history aka add new commits to reverse the effect of some earlier commits
git revert <commit>
```

* Rewriting history ...  to cleanup commit history

```bash
# SQUASHING: manually interactive rebase aka combine multiple commits into one
git rebase -i HEAD~3 # last 3 commits

# AMEND aka update the most recent commit message
git commit --amend # interactive
```

* Bringin changes to your branch

```bash
# bring feat/git to main
git checkout main
git merge feat/git # keep original commits from feat/git intact
git rebase feat/git # rewrite commit history
```