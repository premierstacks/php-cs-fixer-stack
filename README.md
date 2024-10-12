# [PHPCSFixer Stack](https://github.com/premierstacks/php-cs-fixer-stack) by [Tomáš Chochola](https://github.com/tomchochola)

✨ _**Clone and Win!**_

The PHPCSFixer Stack is a pre-configured set of rules and templates specifically tailored for PHP projects. It streamlines the process of setting up PHP-CS-Fixer, making it easy to enforce consistent coding standards and best practices across your PHP codebase without the hassle of manual configuration.

## What is PHPCSFixer Stack?

The PHPCSFixer Stack is part of the Premierstacks collection and serves as a foundational tool for ensuring high-quality PHP code across various projects. It provides pre-configured setups for PHP-CS-Fixer, a powerful tool that automatically fixes code style issues according to predefined rules.

The stack is structured to handle different environments and project types, whether you're working on a pure PHP application or a Laravel-based project. With specialized configurations for common coding patterns and best practices, it simplifies the process of setting up and maintaining code standards.

Unlike manually configuring PHP-CS-Fixer for every project, the PHPCSFixer Stack abstracts the complexity and provides ready-to-use configurations. You only need to install the package and choose the template that best fits your project’s needs. This approach not only saves time but also eliminates the potential for configuration errors, ensuring that all your PHP code adheres to a consistent style across different projects and development environments.

## What is Tomchochola

[https://github.com/tomchochola](https://github.com/tomchochola)

This is my personal GitHub profile, where you’ll find public documentation and sample repositories for proprietary packages and templates from Premierstacks. These public repositories are designed to give you an overview of the best practices and high-quality code I follow in all my projects.

## What is Premierstacks

[https://github.com/premierstacks](https://github.com/premierstacks)

Premierstacks is a collection of exclusive, proprietary stacks and templates for PHP, JavaScript, TypeScript, React, and Laravel. It was created to address the common pain points developers face with many open-source projects—quality, consistency, and maintainability. With Premierstacks, you get high-quality tools built with strict attention to detail, designed to help you build and maintain better projects, faster.

## Why Premierstacks?

I created Premierstacks because I wasn’t satisfied with the quality of many open-source projects. Maintaining high-quality code and ensuring long-term reliability is challenging when you’re not earning from the product. When you pay for something, it means the creator truly cares about its success and is committed to delivering the best possible outcome.

Like Apple’s approach with their closed ecosystem, I believe that true excellence can only be achieved when every detail is under your control. That’s why Premierstacks is proprietary software—it's not just about providing solutions; it’s about ensuring those solutions meet the highest standards.

### Why You Should Choose Premierstacks

**🚀 Unmatched Quality**

Our solutions adhere to the highest standards, ensuring clean and maintainable code.

**⚙️ No Setup Hassles**

Pre-configured environments let you start coding immediately—no more complex setups.

**📦 Reuse Across Projects**

Each library and template is built to be reusable, reducing long-term maintenance.

**🔒 Exclusive Resources**

Premierstacks offers tools you won’t find in typical open-source collections.

**🛠️ Always Up-to-Date**

Receive continuous updates and new features, keeping your projects current.

**💪 Expert Creators**

Developed by experienced professionals dedicated to quality and excellence.

## License

**© 2024–Present Tomáš Chochola <chocholatom1997@gmail.com>. All rights reserved.**

This software is proprietary and licensed under specific terms set by its owner.<br />
Any form of access, use, or distribution requires a valid and active license.<br />
For full licensing terms, refer to the LICENSE.md file accompanying this software.<br />

**Purchase a license here: [Github Sponsors](https://github.com/sponsors/tomchochola)**

**See full terms here: [/LICENSE.md](/LICENSE.md)**

## Module exports

Here are the available module exports:

```php
use Premierstacks\PhpCsFixerStack\ConfigFactory;
use Premierstacks\PhpCsFixerStack\Configs\Premierstacks;
use Premierstacks\PhpCsFixerStack\Configs\Recommended;
use Premierstacks\PhpCsFixerStack\FinderFactory;
```

## Templates

Explore the predefined templates for various configurations in the [/templates](/templates) directory. These templates provide quick-start setups for different environments.

**[/templates/recommended.template](/templates/recommended.template)**<br />
**[/templates/premierstacks.template](/templates/premierstacks.template)**<br />

## Getting Started

**1. Review the documentation and license**

Ensure this package fits your needs and that you agree with the terms.

**2. Obtain a license**

**Purchase a license here: [Github Sponsors](https://github.com/sponsors/tomchochola)**

**3. Install the package**

Setup composer repostory:

```bash
composer config repositories.premierstacks/php-cs-fixer-stack git https://github.com/premierstacks/php-cs-fixer-stack.git
```

Install using composer:

```bash
composer require --dev premierstacks/php-cs-fixer-stack:@dev
```

**4. Select a template**

Choose one of the predefined configuration templates from the [/templates](/templates) directory that best suits your project’s needs.

Use the `cp` command to copy it into your project as `/.php-cs-fixer.php`:

```bash
cp ./vendor/premierstacks/php-cs-fixer-stack/templates/recommended.template .php-cs-fixer.php
# or for premierstacks internal use
cp ./vendor/premierstacks/php-cs-fixer-stack/templates/premierstacks.template .php-cs-fixer.php
```

**5. CLI**

Execute commands:

```bash
# automatically fix code style issues
./vendor/bin/php-cs-fixer fix

# perform static analysis
./vendor/bin/php-cs-fixer fix --dry-run --diff
```

## About the Creator

I'm Tomáš Chochola, a software developer dedicated to creating exclusive, enterprise-grade software solutions. I specialize in building packages and templates for PHP, JavaScript, and TypeScript, tailored to streamline development workflows, enforce best practices, and save you time.

My mission is to develop reusable solutions that enhance code quality, boost productivity, and ensure that projects remain maintainable and scalable over the long term.

### Specializations

**Backend Development:** Expert in PHP and Laravel<br />
**Frontend Development:** Mastery in TypeScript, React, and JavaScript<br />
**DevOps:** Proficient in managing Ubuntu and AWS environments<br />
**Security:** Focused on implementing best practices and enforcing code standards<br />
**Tooling:** Extensive experience with ESLint, Prettier, PHP CS Fixer, Stylelint, and PHPStan<br />
**Reusable Solutions:** Creating templates and configuration stacks for optimized development<br />
**Development Environments:** Fluent in Windows 11 and Ubuntu (WSL2)<br />

## Contact

**📧 Email: <chocholatom1997@gmail.com>**<br />
**💻 Website: [https://premierstacks.com](https://premierstacks.com)**<br />
**👨 GitHub Personal: [https://github.com/tomchochola](https://github.com/tomchochola)**<br />
**🏢 GitHub Organization: [https://github.com/premierstacks](https://github.com/premierstacks)**<br />
**💰 GitHub Sponsors: [https://github.com/sponsors/tomchochola](https://github.com/sponsors/tomchochola)**<br />

## Tree

The following is a breakdown of the folder and file structure within this repository. It provides an overview of how the code is organized and where to find key components.

```bash
.
├── .editorconfig
├── .gitattributes
├── .gitignore
├── .php-cs-fixer.php
├── .prettierignore
├── AUTHORS.md
├── LICENSE.md
├── Makefile
├── README.md
├── composer.json
├── eslint.config.js
├── package.json
├── phpstan.neon
├── phpunit.xml
├── prettier.config.js
├── src
│   ├── ConfigFactory.php
│   ├── Configs
│   │   ├── Premierstacks.php
│   │   └── Recommended.php
│   └── FinderFactory.php
├── templates
│   ├── premierstacks.template
│   └── recommended.template
└── tests
    └── Unit
        ├── ConfigFactoryTest.php
        ├── Configs
        │   ├── PremierstacksTest.php
        │   └── RecommendedTest.php
        ├── FinderFactoryTest.php
        └── TestCase.php

6 directories, 26 files
```
