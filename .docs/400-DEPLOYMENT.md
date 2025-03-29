# CI/CD

## Continuous Integration (CI)

This boilerplate includes a built-in [GitHub CI workflow](../docs/../.github/workflows/100-ci.yml) with essential checks. Feel free to modify it as your application grows.

### Included Checks:
- `composer lint`: Ensures consistent code style across your project.
- `composer rector`: Keeps your codebase up to date with the latest best practices.
- `composer test.arch`: Performs architecture validation.
- `composer test.unit`: Runs unit tests.
- `composer test.feature`: Executes feature tests, ensuring at least 90% test coverage.

## Continuous Deployment (CD)

### Containerized Deployment:
If you wish to use containerized deployment, a pre-configured [Dockerfile](./../Dockerfile) is provided, utilizing the [serversideup/docker-php](https://serversideup.net/open-source/docker-php/) image.

By default, the deploy job pushes the image to an AWS ECR repository. If you're using an AWS compute service that supports container images (e.g., AppRunner, Lambda, or EKS), deployment should work out of the box once you configure the following GitHub secrets and variables:

- `AWS_ACCESS_KEY_ID` _(secret)_
- `AWS_SECRET_ACCESS_KEY` _(secret)_
- `AWS_ECR_REGISTRY` _(secret)_
- `AWS_ECR_REPOSITORY` _(variable)_
- `AWS_REGION` _(variable)_

If you prefer a non-AWS containerized deployment, simply modify the `.github/workflows/200-cd.yml` file as needed.
