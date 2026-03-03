# Container Registry Tagging Strategy

## Tags Used

- latest → most recent stable build
- <commit-sha> → specific build version

## Future Strategy

- dev-<commit>
- staging-<commit>
- prod-<version>

## Why?

Tags allow:
- Rollback to previous versions
- Debug specific deployments
- Track which commit is deployed