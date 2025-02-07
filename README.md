<p align="center">
<img src="./docs/assets/banner.png">
</p>

<p align="center">
<a href="https://github.com/laralaunch/the-boilerplate/actions/workflows/100-ci.yml">
  <img src="https://github.com/laralaunch/the-boilerplate/actions/workflows/100-ci.yml/badge.svg" alt="ci">
</a>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/PHP-8.4-blue?logo=php&logoColor=white" alt="PHP 8.4" />
  <img src="https://img.shields.io/badge/Laravel-11-orange?logo=laravel&logoColor=white" alt="Laravel 11" />
</p>

## About
<a href="https://github.com/laravel/laravel" target="_blank">Official Laravel boilerplate</a> is minimalistic by design, empowering developers with flexibility while leaving many foundational decisions up to them.

This boilerplate fills that gap, providing pre-configured, best-practice-driven strong foundation. That means you _**start fast**_ and _**build right**_ from day one.

## Features

### ✨ Up-to-Date with the Latest Versions
- ✔️ php 8.4
- ✔️ Laravel 11
- ✔️ Official Laravel boilerplate

### ✨ Optimized for Local Development
- ✔️ Essential packages configured for a seamless local development experience
- ✔️ Configured `docker-compose.yml`
- ✔️ Xdebug configured in `dev` and `ci` image
- ✔️ Useful and handy composer commands for streamlined development

### ✨ Built-in CI/CD
- ✔️ GitHub CI workflow with necessary automated checks:
    - `composer lint` — ensures consistent code styling
    - `composer rector` — keeps your code up to date
    - `composer test.arch` — architecture testing
    - `composer test.unit` — unit tests
    - `composer test.feature` — feature tests with a minimum coverage check
- ✔️ Deploy wherever you want
    - Production-ready `Dockerfile` (using [serversideup/docker-php](https://serversideup.net/open-source/docker-php)) for containerized deployment
    - By default, the deploy job pushes image to AWS ECR repository. If you initiate an AWS compute service that supports container image (e.g. AppRunner, Lambda or EKS), deployment should work out-of-the-box just by configuring below variables in GitHub.
        - `AWS_ACCESS_KEY_ID` _(secret)_
        - `AWS_ECR_REGISTRY` _(secret)_
        - `AWS_SECRET_ACCESS_KEY` _(secret)_
        - `AWS_ECR_REPOSITORY`  _(variable)_
        - `AWS_REGION` _(variable)_
    - Modify `.github/workflows/200-cd.yml` if you don't want AWS containerized deployment.

### ✨ Elegant testing
- ✔️ [PestPHP](https://pestphp.com) configured with `Architecture`, `Unit` & `Feature` test-suites

### ✨ Essential Packages out of the box
- ✔️ [**IDE-Helper**](https://github.com/barryvdh/laravel-ide-helper) for autocompletion
- ✔️ [**Rector**](https://github.com/rectorphp/rector) for effortless upgrades
- ✔️ [**Pint**](https://github.com/laravel/pint) for code-styling
- ✔️ [**Larastan**](https://github.com/larastan/larastan) for static analysis, configured to `max` level

### ✨ Packed with Best Practices
- ✔️ Check for consistent code-styling
- ✔️ Static analysis with `max` level
- ✔️ Code-quality checks using rector
- ✔️ [Strict models](https://laravel-news.com/shouldbestrict)
- ✔️ Mandatory [declaring strict types](https://stackoverflow.com/questions/48723637/what-do-strict-types-do-in-php)
- ✔️ [Architecture tests — Laravel presets](https://pestphp.com/docs/arch-testing)
- 🟡 _A few more that we can't mention here, with many more on the roadmap_

### ✨ Customizable
You can easily modify this boilerplate to fit your specific requirements.


## Quick-start
- [Installation](./docs/100-INSTALLATION.md)
- [Development](./docs/200-DEVELOPMENT.md)
- [Testing](./docs/300-TESTING.md)
- [Deployment](./docs/400-DEPLOYMENT.md)


## Inspiration
[![laravel](https://avatars.githubusercontent.com/u/958072?s=48&v=4)](https://laravel.com) &nbsp;&nbsp;
[![aws](https://avatars.githubusercontent.com/u/2232217?s=48&v=4)](https://aws.amazon.com) &nbsp;&nbsp;
[![serversideup/docker-php](https://avatars.githubusercontent.com/u/4761291?s=48&v=4)](https://serversideup.net/open-source/docker-php) &nbsp;&nbsp;


## Contributing
- [Issues](https://github.com/laralaunch/the-boilerplate/issues) 👉 for bugs
- [PRs](https://github.com/laralaunch/the-boilerplate/pulls) 👉 for contributions (Fork the project and create MR targeting `main` branch)
- [Discussions](https://github.com/laralaunch/the-boilerplate/discussions) 👉 for help, thoughts and suggestions
