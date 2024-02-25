<?php

/**
 * This file is part of a software developed by Tomáš Chochola.
 *
 * Copyright © 2024+ Tomáš Chochola <chocholatom1997@gmail.com>
 *
 * For the full copyright and license information, please view the
 * LICENSE.md file that was distributed with this source code, available
 * at the root of this repository.
 *
 * GitHub Profile: https://github.com/tomchochola
 * Support & Sponsor: https://github.com/sponsors/tomchochola
 */

declare(strict_types=1);

namespace Tests;

use PHPUnit\Framework\Attributes\CoversClass;
use PHPUnit\Framework\Attributes\DoesNotPerformAssertions;
use PHPUnit\Framework\Attributes\Small;
use PHPUnit\Framework\Attributes\Test;
use PHPUnit\Framework\Attributes\UsesClass;
use Tomchochola\PhpCsFixerConfig\ConfigFactory;
use Tomchochola\PhpCsFixerConfig\FinderFactory;
use Tomchochola\PhpCsFixerConfig\Preset;

/**
 * @internal
 */
#[Small]
#[CoversClass(Preset::class)]
#[UsesClass(ConfigFactory::class)]
#[UsesClass(FinderFactory::class)]
class PresetTest extends TestCase
{
    #[Test]
    #[DoesNotPerformAssertions]
    public function testMake(): void
    {
        Preset::make(__DIR__, []);
    }
}
