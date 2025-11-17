# Default shell
SHELL := /bin/bash

# Default goal
.DEFAULT_GOAL := help

# Variables
MAKE_PHP_8_4_EXE ?= php8.4
MAKE_COMPOSER_EXE ?= /usr/local/bin/composer
MAKE_NPM_EXE ?= npm
MAKE_NODE_EXE ?= node

MAKE_PHP ?= ${MAKE_PHP_8_4_EXE}
MAKE_COMPOSER ?= ${MAKE_PHP} ${MAKE_COMPOSER_EXE}
MAKE_NPM ?= ${MAKE_NPM_EXE}
MAKE_NODE ?= ${MAKE_NODE_EXE}

# Goals
.PHONY: help
help:
	@echo 'Usage:'
	@echo '  make <target>'
	@echo ''
	@echo 'Mission-critical delivery flows:'
	@echo '  local             '
	@echo '                    Prepare the local developer environment build.'
	@echo '  development       '
	@echo '                    Prepare the shared development-ready environment build.'
	@echo '  testing           '
	@echo '                    Prepare the QA validation environment build.'
	@echo '  staging           '
	@echo '                    Prepare the staging certification environment build.'
	@echo '  production        '
	@echo '                    Prepare the production release environment build.'
	@echo ''
	@echo 'Application runtime interface:'
	@echo '  start | serve | up | server'
	@echo '                    Boot the development HTTP server.'
	@echo ''
	@echo 'Quality gates & assurance:'
	@echo '  check             '
	@echo '                    Execute the end-to-end quality gate before promotion.'
	@echo '  test              '
	@echo '                    Run the full automated test campaign.'
	@echo '  test_phpunit      '
	@echo '                    Execute the PHPUnit regression suite for the service.'
	@echo '  coverage          '
	@echo '                    Host the local web console for the latest coverage run.'
	@echo '  lint              '
	@echo '                    Execute all linters across source code and assets.'
	@echo '  lint_eslint       '
	@echo '                    Run ESLint across JavaScript/TypeScript sources.'
	@echo '  lint_prettier     '
	@echo '                    Verify formatting via Prettier in check mode.'
	@echo '  lint_php_cs_fixer '
	@echo '                    Run php-cs-fixer lint mode for PHP styling.'
	@echo '  fix               '
	@echo '                    Autofix style and formatting deviations across stacks.'
	@echo '  fix_eslint        '
	@echo '                    Autofix JavaScript/TypeScript issues via ESLint.'
	@echo '  fix_prettier      '
	@echo '                    Autofix formatting deviations via Prettier.'
	@echo '  fix_php_cs_fixer  '
	@echo '                    Autofix PHP styling via php-cs-fixer.'
	@echo '  stan              '
	@echo '                    Run advanced static analysis for the PHP domain.'
	@echo '  stan_phpstan      '
	@echo '                    Execute PHPStan with the project configuration.'
	@echo '  audit             '
	@echo '                    Assess dependency health and supply-chain posture.'
	@echo '  audit_npm         '
	@echo '                    Run npm security audits for JavaScript dependencies.'
	@echo '  audit_composer    '
	@echo '                    Run composer audit, platform, and validate checks.'
	@echo ''
	@echo 'Dependencies & environment:'
	@echo '  install           '
	@echo '                    Provision all runtime dependencies for the project.'
	@echo '  install_npm       '
	@echo '                    Install frontend dependencies with npm.'
	@echo '  install_composer  '
	@echo '                    Install PHP dependencies with composer.'
	@echo '  update            '
	@echo '                    Refresh dependencies to the latest approved revisions.'
	@echo '  update_npm        '
	@echo '                    Refresh JavaScript dependencies to current policy.'
	@echo '  update_composer   '
	@echo '                    Refresh PHP dependencies to approved versions.'
	@echo ''
	@echo 'Housekeeping & recovery:'
	@echo '  clean             '
	@echo '                    Purge build caches and dependency artifacts.'
	@echo ''
	@echo 'Meta:'
	@echo '  help              '
	@echo '                    Show this operational guide.'

.PHONY: local
local: ./vendor
	${MAKE_COMPOSER} run dump:development
	${MAKE_COMPOSER} run cache:clear

.PHONY: development
development: local

.PHONY: testing
testing: development
	${MAKE_COMPOSER} run dump:production

.PHONY: staging
staging: testing

.PHONY: production
production: staging

.PHONY: start serve up server
start serve up server: ./vendor/autoload.php
	${MAKE_COMPOSER} run start:development

.PHONY: audit
audit: audit_npm audit_composer

.PHONY: audit_composer
audit_composer: ./vendor ./composer.lock
	${MAKE_COMPOSER} run composer:audit
	${MAKE_COMPOSER} run composer:platform
	${MAKE_COMPOSER} run composer:validate

.PHONY: audit_npm
audit_npm: ./node_modules ./package-lock.json
	${MAKE_NPM} run npm:audit

.PHONY: check
check: lint stan test audit

.PHONY: clean
clean:
	rm -rf ./.php-cs-fixer.cache
	rm -rf ./.phpunit.cache
	rm -rf ./.phpunit.coverage
	rm -rf ./.phpunit.result.cache
	rm -rf ./composer.lock
	rm -rf ./node_modules
	rm -rf ./package-lock.json
	rm -rf ./vendor

.PHONY: coverage
coverage: ./.phpunit.coverage/html
	${MAKE_COMPOSER} start:coverage

.PHONY: fix
fix: fix_eslint fix_prettier fix_php_cs_fixer

.PHONY: fix_eslint
fix_eslint: ./node_modules/.bin/eslint ./eslint.config.js
	${MAKE_NPM} run fix:eslint

.PHONY: fix_php_cs_fixer
fix_php_cs_fixer: ./vendor/bin/php-cs-fixer ./.php-cs-fixer.php
	${MAKE_COMPOSER} run fix:php-cs-fixer

.PHONY: fix_prettier
fix_prettier: ./node_modules/.bin/prettier ./prettier.config.js
	${MAKE_NPM} run fix:prettier

.PHONY: lint
lint: lint_eslint lint_prettier lint_php_cs_fixer

.PHONY: lint_eslint
lint_eslint: ./node_modules/.bin/eslint ./eslint.config.js
	${MAKE_NPM} run lint:eslint

.PHONY: lint_php_cs_fixer
lint_php_cs_fixer: ./vendor/bin/php-cs-fixer ./.php-cs-fixer.php
	${MAKE_COMPOSER} run lint:php-cs-fixer

.PHONY: lint_prettier
lint_prettier: ./node_modules/.bin/prettier ./prettier.config.js
	${MAKE_NPM} run lint:prettier

.PHONY: stan
stan: stan_phpstan

.PHONY: stan_phpstan
stan_phpstan: ./vendor/bin/phpstan ./phpstan.neon
	${MAKE_COMPOSER} run stan:phpstan

.PHONY: test
test: test_phpunit

.PHONY: test_phpunit
test_phpunit: ./vendor/bin/phpunit ./phpunit.xml
	${MAKE_COMPOSER} run dump:development
	${MAKE_COMPOSER} run test:phpunit

.PHONY: install
install: install_npm install_composer

.PHONY: install_npm
install_npm: ./package.json
	${MAKE_NPM} run npm:install

.PHONY: install_composer
install_composer: ./composer.json
	${MAKE_COMPOSER} run composer:install

.PHONY: update
update: update_npm update_composer

.PHONY: update_npm
update_npm: ./package.json
	rm -rf ./node_modules
	rm -rf ./package-lock.json
	${MAKE_NPM} run npm:update

.PHONY: update_composer
update_composer: ./composer.json
	rm -rf ./vendor
	rm -rf ./composer.lock
	${MAKE_COMPOSER} run composer:update

# Dependencies
./.phpunit.coverage/html: test_phpunit

./package-lock.json ./node_modules ./node_modules/.bin/eslint ./node_modules/.bin/prettier:
	${MAKE} install

./composer.lock ./vendor ./vendor/bin/php-cs-fixer ./vendor/bin/phpstan ./vendor/bin/phpunit ./vendor/autoload.php:
	${MAKE} install
