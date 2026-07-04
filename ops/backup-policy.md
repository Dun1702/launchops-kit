# Backup Policy

Backups are part of the deployment system, not an afterthought.

## Minimum Baseline

- Nightly database backup.
- Weekly full backup verification.
- Retain daily backups for 7 days.
- Retain weekly backups for 4 weeks.
- Encrypt backups at rest.
- Store at least one copy outside the application server.

## Restore Drill

Run a restore drill after major schema changes and at least once per month.

```txt
backup created -> backup copied -> restore into staging -> smoke test -> restore notes updated
```

## Operational Signals

- Backup success/failure notification.
- Backup size trend.
- Restore duration trend.
- Last verified restore timestamp.
