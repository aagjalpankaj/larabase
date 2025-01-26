# CI/CD

## CI
- This boilerplate includes a built-in [GitHub CI workflow](../docs/../.github/workflows/100-ci.yml) with necessary checks. As your application grows, feel free to modify it as needed.
- Checks included:
    - `composer lint` — ensures consistent code styling
    - `composer rector` — keeps your code up to date
    - `composer test.arch` — architecture testing
    - `composer test.unit` — unit tests
    - `composer test.feature` — feature tests with a minimum 90% coverage check

## Deployment
- To deploy the application to your preferred platform, you need to update the [GitHub CD workflow](../docs/../.github/workflows/200-cd.yml) accordingly.
- If you want containerized deployment, you'll find pre-configured [Dockerfile](./../Dockerfile) using [serversideup/docker-php](https://serversideup.net/open-source/docker-php/).
