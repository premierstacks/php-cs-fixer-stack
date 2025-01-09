<?php

/**
 * @author Tomáš Chochola <chocholatom1997@gmail.com>
 * @copyright © 2025, Tomáš Chochola <chocholatom1997@gmail.com>. Some rights reserved.
 *
 * @license CC-BY-ND-4.0
 *
 * @see {@link https://creativecommons.org/licenses/by-nd/4.0/} License
 * @see {@link https://github.com/tomchochola} GitHub Personal
 * @see {@link https://github.com/premierstacks} GitHub Organization
 * @see {@link https://github.com/sponsors/tomchochola} GitHub Sponsors
 */

declare(strict_types=1);

namespace Tests\Unit;

use PHPUnit\Framework\Attributes\CoversClass;
use PHPUnit\Framework\Attributes\DoesNotPerformAssertions;
use PHPUnit\Framework\Attributes\Small;
use PHPUnit\Framework\Attributes\Test;
use PhpCsFixer\Finder;
use Premierstacks\PhpCsFixerStack\ConfigFactory;

/**
 * @internal
 */
#[Small]
#[CoversClass(ConfigFactory::class)]
class ConfigFactoryTest extends TestCase
{
    #[Test]
    #[DoesNotPerformAssertions]
    public function testMake(): void
    {
        ConfigFactory::make($this->createMock(Finder::class), []);
    }
}
