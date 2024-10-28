### Intro

`git` - the stupid content tracker...or a fast, scalable, distributed revision control system with an unusually rich command set that provides both high-level operations and full access to internals.

**Git tracks content not files**: Git’s object store is based on the hashed computation of the contents of its objects, not on the file or directory names from the user’s original file layout. 

If two separate files located in two different directories have exactly the same content, Git stores a sole copy of that content as a `blob` (binary large objects) within the object store.

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