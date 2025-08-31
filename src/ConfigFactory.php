<?php

/**
 * @author Tomáš Chochola <chocholatom1997@gmail.com>
 * @copyright © 2025 Tomáš Chochola <chocholatom1997@gmail.com>
 *
 * @license CC-BY-ND-4.0
 *
 * @see {@link https://creativecommons.org/licenses/by-nd/4.0/} License
 * @see {@link https://github.com/tomchochola} GitHub Personal
 * @see {@link https://github.com/premierstacks} GitHub Organization
 * @see {@link https://github.com/sponsors/tomchochola} GitHub Sponsors
 */

declare(strict_types=1);

namespace Premierstacks\PhpCsFixerStack;

use PhpCsFixer\Config;
use PhpCsFixer\ConfigInterface;
use PhpCsFixer\Finder;

class ConfigFactory
{
    /**
     * @param array<string, array<string, mixed>|bool> $rules
     */
    public static function make(Finder $finder, array $rules): ConfigInterface
    {
        return (new Config())
            ->setRiskyAllowed(true)
            ->setLineEnding("\n")
            ->setFinder($finder)
            ->setRules($rules);
    }
}
