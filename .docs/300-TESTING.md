# Reviewing changes locally

Run all CI checks locally (lint, static analysis, rector, tests - architecture, unit & feature tests)
```
composer ci
```

Fix possible CI checks locally (Fixes rector & linting issues automatically)
```
composer ci.fix
```

---

Check linting issues:
```
composer lint
```

Fix linting issues:
```
composer lint.fix
```

Check rector issues:
```
composer rector
```

Fix rector issues:
```
composer rector.fix
```

Check static analysis:
```
composer stan
```

Run architecture tests:
```
composer test.arch
```

Run unit tests:
```
composer test.unit
```

Run feature tests:
```
composer test.feature
```
