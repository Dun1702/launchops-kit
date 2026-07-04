# Release Checklist

Use this checklist before shipping a production update.

- Confirm CI is green on `main`.
- Confirm environment variables are documented and present on the server.
- Run database migrations in a staged environment first.
- Run `docker compose config` on the deployment host.
- Deploy during a low-risk window.
- Run `bash scripts/deploy-check.sh https://your-domain.example`.
- Check logs for application errors.
- Record release version, commit SHA, operator, and rollback notes.

## Rollback Notes

- Keep the previous image tag available.
- Keep the previous `.env` file in a secured backup location.
- Document the command needed to restore the previous version.
