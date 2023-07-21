When a new Gluster is released.

- Retag the relevant branches with the new tags.
- Push the new tags.
- The 'master' branch is the latest gluster (currently v6).

Github builds will be triggered for master pushes and tags matching `production-*`

Tags matching `production-*` will also update the latest tag, which currently all deployments use
