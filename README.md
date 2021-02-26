# isabelle-action

A GitHub Actions action for checking Isabelle theories on CI.

## Releasing a new version

```bash
# Increase the version in action.yml
docker build -t niedzejkob/isabelle-action:vX.Y .
docker push niedzejkob/isabelle-action:vX.Y
git commit
git tag vX.Y
git push
git push --tags
```
